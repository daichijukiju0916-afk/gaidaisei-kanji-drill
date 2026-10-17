
class QuizController < ApplicationController
  before_action :authenticate_player!
  before_action :set_player

 
def index
  # 漢越音が設定された問題だけを対象にする
  scope = Kanji.where.not(vietnamese: [nil, ""])

  # 難易度ごとに問題をグループ化
  difficulties = scope.group(:difficulty).count

  if difficulties.empty?
    @kanji = nil
    return
  end

  # プレイヤーレートと問題レートの差によって重みを設定
  weights = difficulties.keys.map do |difficulty|
    difference = (difficulty.to_i - @player.rating).abs

    weight = Math.exp(-difference / 400.0)

    [difficulty, weight]
  end

  # 重みに応じて難易度を抽選
  total_weight = weights.sum { |_, weight| weight }
  random_value = rand * total_weight

  selected_difficulty = weights.last.first

  weights.each do |difficulty, weight|
    random_value -= weight

    if random_value < 0
      selected_difficulty = difficulty
      break
    end
  end

  # 選ばれた難易度からランダムに1問出題
  @kanji = scope.where(difficulty: selected_difficulty)
                .order(Arel.sql("RANDOM()"))
                .first
end

  def answer
    kanji = Kanji.find(params[:kanji_id])
    user_answer = params[:answer].to_s.strip

    normalize = ->(text) {
      text.to_s.unicode_normalize(:nfc).downcase.strip
    }

    accepted_answers = kanji.vietnamese.to_s.split(",").map do |text|
      normalize.call(text)
    end

    correct = accepted_answers.include?(normalize.call(user_answer))

    # Elo方式によるレート計算
    expected = 1.0 / (
      1.0 + 10.0 ** ((kanji.difficulty - @player.rating) / 400.0)
    )

    score = correct ? 1.0 : 0.0
    rating_change = (20 * (score - expected)).round

    new_rating = [@player.rating + rating_change, 0].max
    actual_change = new_rating - @player.rating

    ActiveRecord::Base.transaction do
      @player.update!(rating: new_rating)

      Answer.create!(
        player: @player,
        kanji: kanji,
        user_answer: user_answer,
        correct: correct,
        rating_change: actual_change
      )
    end

    redirect_to quiz_path(
      result: correct ? "correct" : "incorrect",
      kanji_id: kanji.id,
      change: actual_change
    ), status: :see_other
  end

  private

  def set_player
    @player = current_player
  end
end

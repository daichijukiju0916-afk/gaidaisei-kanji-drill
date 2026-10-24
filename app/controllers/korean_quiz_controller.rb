
class KoreanQuizController < ApplicationController
  before_action :authenticate_player!
  before_action :set_player

  def index
    # 韓国語の読みが登録されている漢字だけ出題
    scope = Kanji.where.not(korean: [nil, ""])

    difficulties = scope.group(:difficulty).count

    if difficulties.empty?
      @kanji = nil
      return
    end

    # 韓国語レートに近い難易度を優先
    weights = difficulties.keys.map do |difficulty|
      difference = (difficulty.to_i - @player.korean_rating).abs
      weight = Math.exp(-difference / 400.0)
      [difficulty, weight]
    end

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

    @kanji = scope.where(difficulty: selected_difficulty)
                  .order(Arel.sql("RANDOM()"))
                  .first
  end

  def answer
    kanji = Kanji.where.not(korean: [nil, ""])
                 .find(params[:kanji_id])

    user_answer = params[:answer].to_s.strip

    normalize = ->(text) {
      text.to_s.unicode_normalize(:nfc).strip
    }

    accepted_answers = kanji.korean.to_s.split(/[,、]/).map do |text|
      normalize.call(text)
    end

    correct = accepted_answers.include?(normalize.call(user_answer))

    # 韓国語専用Eloレート
    expected = 1.0 / (
      1.0 + 10.0 ** (
        (kanji.difficulty.to_i - @player.korean_rating) / 400.0
      )
    )

    score = correct ? 1.0 : 0.0
    rating_change = (20 * (score - expected)).round

    new_rating = [@player.korean_rating + rating_change, 0].max
    actual_change = new_rating - @player.korean_rating

    ActiveRecord::Base.transaction do
      @player.update!(korean_rating: new_rating)

      Answer.create!(
        player: @player,
        kanji: kanji,
        user_answer: user_answer,
        correct: correct,
        rating_change: actual_change,
        language: "korean"
      )
    end

    redirect_to korean_quiz_path(
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

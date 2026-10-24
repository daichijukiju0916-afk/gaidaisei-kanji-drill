
class PlayersController < ApplicationController
  before_action :authenticate_player!

  def show
    @player = current_player

    # ランキングに表示するプレイヤー
    registered_players = Player.where.not(encrypted_password: "")
    @total_players = registered_players.count

    # 言語別の成績
    @stats = {}

    {
      "vietnamese" => :rating,
      "korean" => :korean_rating
    }.each do |language, rating_column|

      rating = @player.public_send(rating_column)
      answers = @player.answers.where(language: language)

      total = answers.count
      correct = answers.where(correct: true).count

      accuracy = if total.zero?
        0
      else
        (correct.to_f / total * 100).round(1)
      end

      # 言語別の順位
      rank = registered_players
        .where("#{rating_column} > ?", rating)
        .count + 1

      # 言語別の連続正解数
      streak = answers
        .order(created_at: :desc, id: :desc)
        .pluck(:correct)
        .take_while { |value| value == true }
        .length

      # 初期レート500から最高レートを再計算
      running_rating = 500
      best_rating = 500

      answers.order(:created_at, :id)
             .pluck(:rating_change).each do |change|

        running_rating = [running_rating + change.to_i, 0].max
        best_rating = [best_rating, running_rating].max
      end

      @stats[language] = {
        rating: rating,
        best_rating: best_rating,
        rank: rank,
        total: total,
        correct: correct,
        accuracy: accuracy,
        streak: streak
      }
    end
  end
end

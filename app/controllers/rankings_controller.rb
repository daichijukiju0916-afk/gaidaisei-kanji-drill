
class RankingsController < ApplicationController
  before_action :authenticate_player!

  def index
    # 表示する言語
    @language = params[:language] == "korean" ? "korean" : "vietnamese"

    # 言語に応じてランキングのレートを選択
    rating_column = @language == "korean" ? :korean_rating : :rating

    @players = Player
      .where.not(encrypted_password: "")
      .order(rating_column => :desc, id: :asc)
      .to_a

    # 言語別の回答数と正解数を集計
    player_ids = @players.map(&:id)

    answers = Answer.where(
      player_id: player_ids,
      language: @language
    )

    @total_counts = answers.group(:player_id).count

    @correct_counts = answers
      .where(correct: true)
      .group(:player_id)
      .count
  end
end

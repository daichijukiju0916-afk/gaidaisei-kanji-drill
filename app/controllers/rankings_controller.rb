class RankingsController < ApplicationController
  before_action :authenticate_player!

  def index
    @players = Player
      .where.not(encrypted_password: "")
      .order(rating: :desc, id: :asc)
  end
end
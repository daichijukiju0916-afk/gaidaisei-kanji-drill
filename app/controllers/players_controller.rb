
class PlayersController < ApplicationController
  before_action :authenticate_player!

  def show
    @player = current_player

    # 自分よりレートが高いユーザー数 + 1
    # 同じレートのユーザーは同順位
    @rank = Player.where("rating > ?", @player.rating).count + 1

    # ランキング参加者数
    @total_players = Player.count
  end
end

class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to admins_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def player_params
      params.require(:player).permit(:player_name, :games_played, :wins)
    end
end

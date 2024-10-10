class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @players = Player.all
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      @id = @game.id
      for i in 1..28
        Score.new(game_id: @id, score_position: i, value_p1: 0, value_p2: 0, value_p3: 0, value_p4: 0).save
      end
        Minigame.new(game_id: @id, player_id: @game.p1).save
        Minigame.new(game_id: @id, player_id: @game.p2).save
        Minigame.new(game_id: @id, player_id: @game.p3).save
        Minigame.new(game_id: @id, player_id: @game.p4).save
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def game_params
      params.require(:game).permit(:game_name, :p1, :p2, :p3, :p4)
    end
end
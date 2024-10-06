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
      @p1 = @game.p1
      @p2 = @game.p2
      @p3 = @game.p3
      @p4 = @game.p4
      @id = @game.id
      for i in 1..28
        Score.new(game_id: @id, player_id: @p1, score_position: i, value: 0).save
        Score.new(game_id: @id, player_id: @p2, score_position: i, value: 0).save
        Score.new(game_id: @id, player_id: @p3, score_position: i, value: 0).save
        Score.new(game_id: @id, player_id: @p4, score_position: i, value: 0).save
      end
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

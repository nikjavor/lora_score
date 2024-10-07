class AdminsController < ApplicationController
  def index
    @players = Player.all.order(:player_name)
  end
end

class AdminsController < ApplicationController
  def index
    @players = Player.all
  end
end

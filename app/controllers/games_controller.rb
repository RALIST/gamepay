class GamesController < ApplicationController
  def show
    @game = Game.friendly.find(params[:id])
    @lots = @game.lots
  end
end

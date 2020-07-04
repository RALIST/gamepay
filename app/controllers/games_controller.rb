class GamesController < ApplicationController
  def show
    @game = Game.friendly.find(params[:id])
    @lots = @game.lots.order(price: :asc)
  end
end

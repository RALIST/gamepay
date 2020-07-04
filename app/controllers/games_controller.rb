class GamesController < ApplicationController
  def show
    @game = Game.friendly.find(params[:id])
    @lot_names =  @game.lot_types.distinct.pluck(:name)
    if !params[:type]
      @lots = @game.lots.includes(:user, :lot_type).order(price: :asc)
    else
      @lots = @game.lots.includes(:user, :lot_type).where(lot_types: {name: params[:type]}).order(price: :asc)
    end
  end
end

class GamesController < ApplicationController

  has_scope :by_tag, as: :tag
  has_scope :by_type, as: :type

  def show
    @game = Game.friendly.find(params[:id])
    @lot_names =  @game.lot_types.distinct.pluck(:name)
    @lots = apply_scopes(Lot).order(price: :asc)
  end
end

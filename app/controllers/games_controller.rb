class GamesController < ApplicationController

  has_scope :by_tag, as: :tag
  has_scope :by_type, as: :type

  def show
    @lot_names = game.lot_types.distinct.pluck(:name)
    @lots = apply_scopes(game.lots).order(price: :asc)
  end

  private
  def game
    @game ||= Game.friendly.find(params[:id])
  end
end

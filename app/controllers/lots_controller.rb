class LotsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @lots = @game.lots
  end

  def show

  end

  def new
    @lot = Lot.new
  end

  def create
    @lot = Lot.create(lot_params)
    if @lot.save
      redirect_to game
    else
      render :new
      flash[:alert] = 'Cant create offer'
    end
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :description, :price).merge!(game_id: game.id, user: current_user)
  end

  def game
    @game ||= Game.friendly.find(params[:game_id])
  end
end

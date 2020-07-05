class LotsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @lots = @game.lots
  end

  def show

  end

  def new
    @lot = game.lots.new
  end

  def create
    @lot = game.lots.create(lot_params)
    if @lot.save
      redirect_to game
    else
      render :new
      flash[:alert] = 'Cant create offer'
    end
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :description, :price, :lot_type, :game_server).merge!(user: current_user, lot_type: lot_type, game_server: game_server)
  end

  def game_server
    @game_server ||= GameServer.find(params[:lot][:game_server])
  end

  def lot_type
    @lot_type ||= LotType.find_by!(name: params[:lot][:lot_type] )
  end

  def game
    @game ||= Game.friendly.find(params[:game_id])
  end
end

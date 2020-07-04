class MainController < ApplicationController

  def index
    @games = Game.limit(5)
    @grouped_games = Game.all.order(:name).group_by { |game| game.name[0].upcase }
  end

end

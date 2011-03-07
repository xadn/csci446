class GamesController < ApplicationController

  def index
    @games = Game.paginate(:page => params[:page])
		@game_count = Game.count
  end

  def show
    @game = Game.find(params[:id])
  end

end

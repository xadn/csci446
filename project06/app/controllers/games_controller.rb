class GamesController < ActionController::Base

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

end

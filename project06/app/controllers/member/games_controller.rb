class Member::GamesController < Member::MemberController

  def index
    @games = current_user.games.paginate(:page => params[:page])
		@game_count = current_user.games.count
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])
		@game.user = current_user

		if @game.save
			flash[:notice] = "New game added."
			redirect_to @game
		else
			flash[:notice] = "Unable to add game"
			redirect_to root_url
		end
  end

  def update
    @game = Game.find(params[:id])

		if @game.update_attributes(params[:game])
			flash[:notice] = "Game updated."
			redirect_to @game
		else
			flash[:notice] = "Unable to update game."
			redirect_to root_url
		end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
		redirect_to root_url
  end

end

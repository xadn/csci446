class Admin::UsersController < Admin::AdminController
	
  def index
    @users = User.all
  end

  def show
	 @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
		if @user.save
			flash[:notice] = "Registration successful."
			redirect_to users_url
		else
			render :action => 'new'
		end
  end

  def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated user."
			redirect_to root_url
		else
			render :action => 'edit'
		end
  end

  def destroy
		@user = User.find(params[:id])
    @user.destroy
  end
end

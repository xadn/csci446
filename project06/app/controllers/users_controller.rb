class UsersController < ApplicationController
	filter_resource_access
	
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
    @user = current_user
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
		@user = current_user
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated user."
			redirect_to root_url
		else
			render :action => 'edit'
		end
  end

  def destroy
    @user.destroy
  end
end

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
		@user = User.new(params[:user])
	
		if verify_recaptcha and @user.save
			flash[:notice] = "Registration successful."
			redirect_to @user.homepage
		else
			flash[:notice] = "Are you sure you're human?"
			render :action => 'new'
		end
  end

end

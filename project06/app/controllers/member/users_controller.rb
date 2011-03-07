class Member::UsersController < Member::MemberController

  def show
	 @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
		@user = current_user
		
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated user."
			redirect_to '/member'
		else
			render :action => 'edit'
		end
  end

  def destroy
		@user = current_user
    @user.destroy
  end
end

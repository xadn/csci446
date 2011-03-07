class Member::UsersController < Member::MemberController
	filter_access_to :all
	
  def edit
    @user = current_user
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

end

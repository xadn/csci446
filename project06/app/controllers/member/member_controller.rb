class Member::MemberController < ApplicationController
	before_filter :require_user
	
	filter_access_to :all
	
	def index
	end
	
	protected
	
		def permission_denied
			flash[:error] = "You are not able to access #{request.path}"
		end
end
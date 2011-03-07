# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  helper :all
	protect_from_forgery
	filter_parameter_logging :password
	helper_method :current_user, :current_user_session
  
	before_filter { |c| Authorization.current_user = c.current_user }
	
	def current_user
		return @current_user if defined?(@current_user)
		@current_user = current_user_session && current_user_session.record
	end	
	
	def current_user_session
		return @current_user_session if defined?(@current_user_session)
		@current_user_session = UserSession.find
	end

end

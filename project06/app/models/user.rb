class User < ActiveRecord::Base
	acts_as_authentic
	
	has_many :games
	
	def to_s
		username
	end
	
	def role_symbols
		return :admin if current_user && admin?
		return :member if current_user
	end
end

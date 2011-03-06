class User < ActiveRecord::Base
	acts_as_authentic
	
	has_many :games
	
	def role_symbols
		if admin?
			[:admin] 
		else
			[:member]
		end
	end
end

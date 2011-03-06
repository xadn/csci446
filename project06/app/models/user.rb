class User < ActiveRecord::Base
	acts_as_authentic
	
	has_many :games
	
	def to_s
		username
	end
	
	def role_symbols
		if admin?
			[:admin] 
		else
			[:member]
		end
	end
end

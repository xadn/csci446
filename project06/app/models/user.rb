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
	
	def homepage
		return :controller => '/admin' if role_symbols.include? :admin
		return :controller => '/member' if role_symbols.include? :member
	end
	
end

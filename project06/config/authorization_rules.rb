# authorization do
# 	
# 	role :guest do
# 		has_permission_on :user_sessions, :to => :create
# 	end
# 	
# 	role :member do
# 	end
# 	
# 	role :admin do
# 		has_permission_on [:admin_games, :admin_users, :user_sessions], :to => :manage
# 	end
# 	
# 	privileges do
# 	  privilege :manage, :includes => [:create, :read, :update, :delete]
# 	  privilege :read, :includes => [:index, :show]
# 	  privilege :create, :includes => :new
# 	  privilege :update, :includes => :edit
# 	  privilege :delete, :includes => :destroy
# 	end
# 	
# end
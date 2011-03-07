authorization do
	
	role :member do
			has_permission_on [:games, :member_games, :member_users, :user_sessions], :to => :manage
	end
	
	role :admin do
		#includes :member
		has_permission_on [:admin, :admin_games, :admin_users], :to => :manage
	end
		
	role :guest do
			has_permission_on [:users, :user_sessions], :to => :manage
			has_permission_on :games, :to => :read
	end
	
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end

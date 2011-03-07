authorization do
	
	role :admin do
		has_permission_on [:games, :admin_users, :user_sessions], :to => :manage
	end
	
	role :member do
			has_permission_on [:games, :users, :user_sessions], :to => :manage
	end
		
	role :guest do
			has_permission_on [:games, :users, :user_sessions], :to => :manage
	end
	
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end

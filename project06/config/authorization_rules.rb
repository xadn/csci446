authorization do
	
	role :member do
		has_permission_on :games, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
		has_permission_on :users, :to => [:show, :edit, :update, :create]
	end
	
	role :admin do
		includes :member
		has_permission_on [:games, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
		
	role :guest do
		has_permission_on :games, :to => [:index, :show]
		has_permission_on :users, :to => [:new, :create]
	end
	
end
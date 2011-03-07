ActionController::Routing::Routes.draw do |map|
	
	map.resources :user_sessions
  map.resources :games
	map.resources :users
	map.root :controller => :user_sessions, :action => :new
	
	map.login "login", :controller => :user_sessions, :action => :new
	map.logout "logout", :controller => :user_sessions, :action => :destroy
	map.register "register", :controller => :users, :action => :new
	
	map.namespace :admin do |admin|
		admin.resources :games
		admin.resources :users
		admin.root :controller => 'admin', :action => 'index'
	end

	map.namespace :member do |member|
		member.resources :games
		member.resources :users
		member.root :controller => :games
	end 

 	map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

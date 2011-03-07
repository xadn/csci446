ActionController::Routing::Routes.draw do |map|
	
	map.login "login", :controller => "user_sessions", :action => "new"
	map.logout "logout", :controller => "user_sessions", :action => "destroy"
#	map.register "register", :controller => "users", :action => "new"
	
	map.resources :user_sessions
  map.resources :games
#  map.resources :users

map.namespace :admin do |admin|
	admin.resources :users
	admin.root :controller => 'admin', :action => 'index'
end

map.namespace :member do |member|
	member.resources :games
	member.root :controller => 'member', :action => 'index'
end 

 	map.root :controller => 'games'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

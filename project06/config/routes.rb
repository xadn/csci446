ActionController::Routing::Routes.draw do |map|
	
	map.login "login", :controller => "user_sessions", :action => "new"
	map.logout "logout", :controller => "user_sessions", :action => "destroy"

	map.resources :user_sessions
  map.resources :games
  map.resources :users
 	map.root :controller => 'games'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

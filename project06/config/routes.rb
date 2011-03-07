ActionController::Routing::Routes.draw do |map|
	
	map.root :controller 'games', :action => 'index'
	#map.root :controller "user_sessions", :action => 'new'
	
	# map.login "login", :controller => "user_sessions", :action => "new"
	# map.logout "logout", :controller => "user_sessions", :action => "destroy"
	# map.register "register", :controller => "users", :action => "new"
	# 
	# map.namespace :admin do |admin|
	# 	admin.root :controller => 'admin', :action => 'index'
	# 	admin.resources :games
	# 	admin.resources :users
	# end
	# 
	# map.namespace :member do |member|
	# 	member.root :controller => 'member', :action => 'index'
	# 	member.resources :games
	# end
	# 
	map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end

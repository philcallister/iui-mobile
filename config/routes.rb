ActionController::Routing::Routes.draw do |map|

  map.resources :landings, :only => [:index]
  map.resources :logins, :only => [:new, :create]
  map.root :controller => "landings", :action => "index"

end
ActionController::Routing::Routes.draw do |map|

  map.resources :landings, :only => [:index]
  map.resources :logins, :only => [:create, :destroy]

  # This is suppose to flip EDIT to HTTP POST, but it's not working, and I don't
  # feel like messing around with any longer right now.
  #map.resources :accounts, :only => [:show, :edit, :update], :edit => {:edit => :post}
  map.resources :accounts, :only => [:show, :update]
  map.edit_account '/accounts/:id/edit.:format',
    :controller => 'accounts',
    :action => 'edit',
    :conditions => {:method => [:get,:post]}
  map.root :controller => "landings", :action => "index"

end
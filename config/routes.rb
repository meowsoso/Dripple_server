# == Route Map
#
#            Prefix Verb   URI Pattern                  Controller#Action
#    api_user_token POST   /api/user/token(.:format)    api/user_token#create
# api_users_current GET    /api/users/current(.:format) api/users#current
#          dripples GET    /dripples(.:format)          dripples#index
#                   POST   /dripples(.:format)          dripples#create
#           dripple GET    /dripples/:id(.:format)      dripples#show
#                   PATCH  /dripples/:id(.:format)      dripples#update
#                   PUT    /dripples/:id(.:format)      dripples#update
#                   DELETE /dripples/:id(.:format)      dripples#destroy

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    post 'user/token' => 'user_token#create'
    get 'users/current' => 'users#current'
  end


  resources :categories, :only => :index
  resources :dripples, :only => [:create, :update, :destroy, :index, :show]
  resources :tags, :only => [:create, :update, :destroy, :index, :show]

end

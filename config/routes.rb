# == Route Map
#
#     Prefix Verb   URI Pattern                   Controller#Action
# user_token POST   /api/user_token(.:format)     user_token#create
#      users GET    /api/users(.:format)          users#index
#            POST   /api/users(.:format)          users#create
#   new_user GET    /api/users/new(.:format)      users#new
#  edit_user GET    /api/users/:id/edit(.:format) users#edit
#       user GET    /api/users/:id(.:format)      users#show
#            PATCH  /api/users/:id(.:format)      users#update
#            PUT    /api/users/:id(.:format)      users#update
#            DELETE /api/users/:id(.:format)      users#destroy
# categories GET    /api/categories(.:format)     categories#index
#   dripples GET    /api/dripples(.:format)       dripples#index
#            POST   /api/dripples(.:format)       dripples#create
#    dripple GET    /api/dripples/:id(.:format)   dripples#show
#            PATCH  /api/dripples/:id(.:format)   dripples#update
#            PUT    /api/dripples/:id(.:format)   dripples#update
#            DELETE /api/dripples/:id(.:format)   dripples#destroy
#       tags GET    /api/tags(.:format)           tags#index
#            POST   /api/tags(.:format)           tags#create
#        tag GET    /api/tags/:id(.:format)       tags#show
#            PATCH  /api/tags/:id(.:format)       tags#update
#            PUT    /api/tags/:id(.:format)       tags#update
#            DELETE /api/tags/:id(.:format)       tags#destroy

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :users, :defaults => { format: 'json' }
    resources :categories, :only => :index, :defaults => { format: 'json' }
    resources :dripples, :only => [:create, :update, :destroy, :index, :show], :defaults => { format: 'json' }
    resources :tags, :only => [:create, :update, :destroy, :index, :show], :defaults => { format: 'json' }
end



end

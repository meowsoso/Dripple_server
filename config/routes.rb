# == Route Map
#
#     Prefix Verb   URI Pattern                   Controller#Action
# user_token POST   /api/user_token(.:format)     user_token#create
#      users GET    /api/users(.:format)          users#index {:format=>"json"}
#            POST   /api/users(.:format)          users#create {:format=>"json"}
#   new_user GET    /api/users/new(.:format)      users#new {:format=>"json"}
#  edit_user GET    /api/users/:id/edit(.:format) users#edit {:format=>"json"}
#       user GET    /api/users/:id(.:format)      users#show {:format=>"json"}
#            PATCH  /api/users/:id(.:format)      users#update {:format=>"json"}
#            PUT    /api/users/:id(.:format)      users#update {:format=>"json"}
#            DELETE /api/users/:id(.:format)      users#destroy {:format=>"json"}
# categories GET    /api/categories(.:format)     categories#index {:format=>"json"}
#   dripples GET    /api/dripples(.:format)       dripples#index {:format=>"json"}
#            POST   /api/dripples(.:format)       dripples#create {:format=>"json"}
#    dripple GET    /api/dripples/:id(.:format)   dripples#show {:format=>"json"}
#            PATCH  /api/dripples/:id(.:format)   dripples#update {:format=>"json"}
#            PUT    /api/dripples/:id(.:format)   dripples#update {:format=>"json"}
#            DELETE /api/dripples/:id(.:format)   dripples#destroy {:format=>"json"}
#       tags GET    /api/tags(.:format)           tags#index {:format=>"json"}
#            POST   /api/tags(.:format)           tags#create {:format=>"json"}
#        tag GET    /api/tags/:id(.:format)       tags#show {:format=>"json"}
#            PATCH  /api/tags/:id(.:format)       tags#update {:format=>"json"}
#            PUT    /api/tags/:id(.:format)       tags#update {:format=>"json"}
#            DELETE /api/tags/:id(.:format)       tags#destroy {:format=>"json"}

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'messages#root'
  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]
  mount ActionCable.server, at: '/cable'
  
  scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :users, :defaults => { format: 'json' }
    resources :categories, :only => :index, :defaults => { format: 'json' }
    resources :dripples, :only => [:create, :update, :destroy, :index, :show], :defaults => { format: 'json' }
    resources :tags, :only => [:create, :update, :destroy, :index, :show], :defaults => { format: 'json' }
end




end

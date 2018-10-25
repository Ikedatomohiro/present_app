Rails.application.routes.draw do
  post 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "products/user/basket" => "users#basket"
get "products/user/purchase" => "users#purchase"

devise_for :users
get "/" => "home#index"

get "products/index" => "products#index"
get "products/new" => "products#new"
get "products/:id" => "products#show"
post "products/create" => "products#create"
get "products/:id/edit" => "products#edit"
post "products/:id/update" => "products#update"
post "products/:id/destroy" => "products#destroy"

resources :purpose

resources :users


end

Rails.application.routes.draw do
  post 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users
get "/" => "home#index"

get "products" => "products#index"
get "products/new" => "products#new"
post "products/create" => "products#create"
get "products/:id/edit" => "products#edit"
get "products/:id" => "products#show"

post "products/:id/update" => "products#update"
post "products/:id/destroy" => "products#destroy"



end

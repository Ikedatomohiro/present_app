Rails.application.routes.draw do
  post 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users
root "home#index"

get "home/product"
get "home/registration"



end

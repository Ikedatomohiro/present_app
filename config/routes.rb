Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
resources :carts
resources :presents

get "products/user/basket" => "users#basket"
get "products/user/purchase" => "users#purchase"
get "products/user/settlement" => "users#settlement"
#post "products/user/settlement" => "users#settlement"
get "products/user/confirm" => "users#confirm"
get "products/user/thanks" => "users#thanks"
post "products/user/present" => "users#present"
post "products/user/presentopponent" => "users#presentopponent"
post "presents/set_present" => "presents#set_present"

delete "products/user/:id" => "users#cartitemdelete"

post "/products/user/settlement" => "presents#back"
delete "/product/dissapear" => "products#dissapear"


  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

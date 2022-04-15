Rails.application.routes.draw do

  devise_for :users
  get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'

  #get "/page/1", to: "page#index"
  #get "/page/2", to: "page#SignUpPage"
end

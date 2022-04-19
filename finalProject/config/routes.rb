Rails.application.routes.draw do
  devise_for :users
  get 'page/index'
  get 'page/adminReport'
  get '/page/majorRequirements'
  get 'page/studentComplete'
  get 'page/studentIncomplete'
  post'page/majorRequirements' => 'page#majorRequirements'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'
  
  resources :page

end

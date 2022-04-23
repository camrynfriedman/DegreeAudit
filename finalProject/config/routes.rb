Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'page#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'page/index'
  get 'page/adminReport'
  get '/page/majorRequirements'
  get 'page/studentComplete'
  get 'page/userReport'
  post'page/majorRequirements' => 'page#majorRequirements'
  post'page/studentComplete' => 'page#studentComplete'
  post'page/adminReport' => 'page#userReport'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'
  
  resources :page


end

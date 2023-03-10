Rails.application.routes.draw do
  devise_for :users  
  get 'about_us/index'
  get '/coming_soon', to: 'pages#coming_soon'
  get '/perm', to: 'users#update_permissions'
  resources :variants
  resources :cars
  resources :brands
  devise_scope :user do
    get "users/sign_out" => 'devise/sessions#destroy'
  end
  root 'home#index'
  resources :users do
    put :update_permissions, on: :member
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

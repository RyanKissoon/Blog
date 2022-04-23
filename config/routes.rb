Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  
  root to: "home#index"
  scope module: 'authors' do 
    resources :posts
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
end

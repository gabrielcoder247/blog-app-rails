Rails.application.routes.draw do
  resources :games

  root 'users#index'


  resource :users, only: [:index, :show] do
    resource :posts, only: [:index, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

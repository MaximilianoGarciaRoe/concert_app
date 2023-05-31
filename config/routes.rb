Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'application#index'

  resources :venues do
    get :mejor_lugar, on: :collection
    resources :events
  end
end

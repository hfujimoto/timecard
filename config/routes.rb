Rails.application.routes.draw do
  namespace :work do
    resources :records
  end
  resources :people
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "people#index"
end

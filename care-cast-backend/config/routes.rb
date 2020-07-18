Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :list_items
      resources :journal_entries
      resources :user_ratings
      resources :categories
      resources :feelings
      resources :users, except: [:index]
      post '/login', to: 'auth#create'
      get '/dashboard', to: 'users#dashboard'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

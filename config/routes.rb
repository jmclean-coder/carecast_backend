Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :list_items, except: [:show]
      resources :journal_entries, except: [:show]
      resources :user_ratings
      resources :categories, only: [:index]
      resources :feelings, except: [:show, :update]
      resources :user_feelings
      resources :users, except: [:index]
      get '/currentuser', to: 'auth#show'
      post '/login', to: 'auth#create'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

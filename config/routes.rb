Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :destroy, :update] do
    get '/haunted_houses', as: 'haunted_houses', to: 'user#user_haunted_houses'
    post '/haunted_houses', to: 'user#new_user_haunted_house'
    get '/ghosts', as: 'ghosts', to: 'user#user_ghosts'
  end
  resources :haunted_houses, only: [:index, :show, :create, :update]
  resources :ghosts, only: [:index, :show, :create, :update]
end

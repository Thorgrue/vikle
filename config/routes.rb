Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/test', to: 'audiobooks#test', as: 'test'
  get '/audiobooks/myaudiobooks', to: 'audiobooks#show_my', as: 'my_audiobooks'
  get 'audiobooks/favorites', to: 'favorites#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :audiobooks do
    resources :reviews, only: [:new, :create]
    resources :favorites, only: [:create]
  end
  resources :reviews, only: [:destroy]
  resources :favorites, only: [:destroy]
end

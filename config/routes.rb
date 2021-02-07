Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :audiobooks, only: [:index, :new, :create, :edit, :update, :destroy]
  # -> ça veut dire toutes mdrr
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:index, :show, :create, :new, :destroy] do
    resources :transactions, only: [:create]
  end
  resources :users, only: [:show] do
    resources :reviews, only: [:index, :create]
  end
  resources :transactions, only: [:show]
end

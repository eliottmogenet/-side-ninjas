Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: [:index, :show, :edit, :update, :create, :new, :destroy]
  resources :user_languages, only: [:index]
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: "pages#components"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: [:index, :show, :edit, :update, :create, :new, :destroy]
  resources :user_languages, only: [:index, :new, :create, :edit, :update]

  resources :projects, only: [:index, :show, :edit, :update, :create, :new, :destroy] do
    resources :participations, only: [:new, :create]
    resources :features, only: [:index, :show, :new, :create, :edit, :update]
  end

  resources :participations, only: [:destroy, :edit, :update] do
    member do
      post 'accept', to: "participations#accept"
      post 'refuse', to: "participations#refuse"
    end
  end

  resources :features, only: [:destroy]
  resources :dashboards, only: [:index]
  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end

  resources :users, only: [] do
    resources :chatrooms, only: [:create, :index]
  end
  # users/34/chatrooms POST

end

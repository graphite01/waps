Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'confirms#index'
  resources :hopes
  resources :confirms
  resources :comments
  resources :users, only: [:index, :new, :show, :edit, :update, :destroy] do
    get "oauth2callback", to:"gcalendars#callback"
  end
end

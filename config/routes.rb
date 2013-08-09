Spellpad::Application.routes.draw do

  root to: 'characters#index'
  get "sign_out" => "sessions#destroy", as: 'sign_out'
  get "sign_in" => "sessions#new", as: 'sign_in'
  get "sign_up" => "users#new", as: 'sign_up'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  resources :characters, only: [:index, :new, :create, :show]

  namespace :api do
    resources :spells, only: [:index]
    resources :user_sessions, only: [:index]
    resources :character_spells, only: [:create, :destroy]
  end

end

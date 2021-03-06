Spellpad::Application.routes.draw do

  root to: 'characters#index'
  get "sign_out" => "sessions#destroy", as: 'sign_out'
  get "sign_in" => "sessions#new", as: 'sign_in'
  get "sign_up" => "users#new", as: 'sign_up'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  resources :characters, only: [:index, :new, :create, :show] do
    resources :spells, only: [:index]
  end

  resources :character_classes, only: [] do
    resources :spells, only: [:index]
  end

  resources :spells, only: [:show]

end


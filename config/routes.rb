Spellpad::Application.routes.draw do

  root to: 'characters#index'
  resources :characters, only: [:index, :new, :create, :show] do
    resources :spells, only: [:index]
  end

  resources :character_classes, only: [] do
    resources :spells, only: [:index]
  end

  resources :spells, only: [:show]

end

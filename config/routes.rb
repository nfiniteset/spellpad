Spellpad::Application.routes.draw do

  root to: 'characters#index'
  resources :characters, only: [:index, :new, :create, :show]

end

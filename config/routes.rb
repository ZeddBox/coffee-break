Rails.application.routes.draw do
  root 'home#index'
  get '/a-propos-de-moi', to: 'home#about'
  get '/mentions-legales', to: 'home#mentions'


  devise_for :users, path: 'gestion', path_names: { sign_in: 'se-connecter', sign_out: 'deconnexion', password: 'secret', confirmation: 'verification', unlock: 'deblocage', registration: 'compte', sign_up: 'inscription' }

  resources :admin, only: [:index]
  resources :contact, only: [:index, :new, :create]

end

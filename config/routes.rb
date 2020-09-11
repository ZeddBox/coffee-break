Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, path: 'admin', path_names: { sign_in: 'connexion', sign_out: 'deconnexion', password: 'secret', confirmation: 'verification', unlock: 'deblocage', registration: 'compte', sign_up: 'inscription' }
end

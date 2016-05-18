Rails.application.routes.draw do
  devise_for :users

  resources :buyers do
    resources :constructions
    resources :databases
    resources :easements
    resources :liens
    resources :manufactured_homes
    resources :mortgages
    resources :occupancies
    resources :prior_policies
    resources :profiles
    resources :property_uses
    resources :taxes
    resources :overview, only: [:index, :new]
    resources :databases
  end

  root "buyers#new"

end

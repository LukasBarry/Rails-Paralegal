Rails.application.routes.draw do
  devise_for :users

  # get 'show' => 'buyers#show_buyers'
  # get 'new' => 'buyers#new'
  # put 'forms' => 'buyers#create_buyers'
  # root "buyers#show_buyers"
 
  resources :buyers
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

end

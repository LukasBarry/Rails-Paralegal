Rails.application.routes.draw do
  devise_for :users

  get 'show' => 'forms#show_buyers'
  get 'new' => 'forms#new'
  put 'forms' => 'forms#create_buyers'
  root "forms#show_buyers"

end

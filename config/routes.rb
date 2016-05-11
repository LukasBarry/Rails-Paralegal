Rails.application.routes.draw do
  devise_for :users

  get 'show' => 'buyers#show_buyers'
  get 'new' => 'buyers#new'
  put 'forms' => 'buyers#create_buyers'
  root "buyers#show_buyers"

end

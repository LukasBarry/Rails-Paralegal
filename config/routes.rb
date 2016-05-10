Rails.application.routes.draw do
  devise_for :users

  get 'show' => 'forms#show_buyers'

end

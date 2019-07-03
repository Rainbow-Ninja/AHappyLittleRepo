Rails.application.routes.draw do
  resources :paintings
  resources :profiles
  get 'home/page'
  devise_for :users
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/', to:"home#page", "as:root" - same as below
  root 'home#page'

end

Rails.application.routes.draw do
  devise_for :users
  root :to => 'products#welcome'

  resources :products do
    resources :reviews
  end
  

end

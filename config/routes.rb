Rails.application.routes.draw do
  
  
  resources :pictures
  devise_for :users
  
  root "pictures#index"
end

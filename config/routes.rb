Rails.application.routes.draw do
  
  
  resources :pictures
  resources :places
  devise_for :users
  
  root "pictures#index" 
end

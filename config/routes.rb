Rails.application.routes.draw do
  resources :users,
  controller: 'users'
  
  
  get 'homepage/index'
  
  resources :assignments, :incentives
  
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
end

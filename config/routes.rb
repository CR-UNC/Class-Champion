Rails.application.routes.draw do
  resources :users,
  controller: 'users',
  only: 'create'
  
  get 'homepage/index'
  
  resources :assignments
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
end

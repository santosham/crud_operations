Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]  
  get 'signup', to: 'users#new', as: 'signup'  
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  

  resources :users
  mount Products::ProductsAPI => '/api/products'  

 
  resources :products
  root 'products#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

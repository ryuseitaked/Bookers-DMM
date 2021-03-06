Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to :'homes#top'
  
  get 'homes/about', to: 'homes#about'
  
  resources :users, only: [:show,:edit,:update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
end

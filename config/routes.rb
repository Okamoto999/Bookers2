Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:top,:create,:show,:edit,:update,:index,:destroy]
  resources :users, only: [:index,:show,:edit,:update,:about]

  root 'books#top'
  get '/home/about' => 'users#about'
  get '/books' => 'books#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

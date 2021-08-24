Rails.application.routes.draw do
 #get 'top' =>'homes#top'

  root to: 'homes#top'

  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]

  #root :to => "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

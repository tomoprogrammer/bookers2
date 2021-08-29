Rails.application.routes.draw do
 #get 'top' =>'homes#top'

  root to: 'homes#top'

   get 'home/about' => 'homes#about'

  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:show, :edit, :index, :update]

  #root :to => "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

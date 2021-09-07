Rails.application.routes.draw do

  root to: 'homes#top'

   get 'home/about' => 'homes#about'

   get '/search', to: 'searches#search'

  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
  end

   resources :users, only: [:show, :edit, :index, :update] do
   resource :relationships, only: [:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers' , as: 'followers'
  end

  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

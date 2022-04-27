Rails.application.routes.draw do
  get 'chats/show'
  get 'searches/search'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about', as: 'about'
  get 'search' => 'searches#search'
  resources :chats, only: [:show, :create]

  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:new, :create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

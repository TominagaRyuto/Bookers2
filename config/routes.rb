Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users, only: [:index, :edit, :update, :show]
  resources :books, only: [:update, :create, :index, :show, :destroy, :edit]
end

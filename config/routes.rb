Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :index]
  resources :manuals, only: [:index, :new, :show]
  resources :contacts, only: :index
  resources :welcome, only: :index
end

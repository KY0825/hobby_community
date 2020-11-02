Rails.application.routes.draw do
  root to: 'groups#index'
  devise_for :users
  resources :groups, only: [:new, :index] 
  # do
  #   resources :messages, only: [:index, :edit]
  # end
end
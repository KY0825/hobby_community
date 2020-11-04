Rails.application.routes.draw do
  root to: 'groups#index'
  devise_for :users
  resources :groups, only: [:new, :index, :create, :show] do
    resources :messages, only: [:index, :edit, :show]
  end
end
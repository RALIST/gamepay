Rails.application.routes.draw do
  devise_for :users, path: 'auth'
  root 'main#index'

  resources :games do
    resources :lots
  end
end

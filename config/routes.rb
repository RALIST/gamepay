Rails.application.routes.draw do
  devise_for :users, path: 'auth'
  root 'main#index'

  resources :games do
    resources :lots
    member do
      get '/(:type)(/:tag)', defaults: { type: 'all' }, to: 'games#show', as: :filtered
    end
  end



  resources :users, only: [:show]
end

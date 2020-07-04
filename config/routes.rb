Rails.application.routes.draw do
  devise_for :users, path: 'auth'
  root 'main#index'


  get '/games/:id/(:type)', to: "games#show", as: :game

  resources :games do
	  resources :lots
  end

  resources :users, only: [:show]
end

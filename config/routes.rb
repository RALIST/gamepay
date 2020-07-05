Rails.application.routes.draw do
  devise_for :users, path: 'auth'
  root 'main#index'

  resources :games, only: [] do
	  resources :lots
  end
  get '/games/:id/(:tag(/:type))', defaults: {tag: 'RU'}, to: "games#show", as: :game



  resources :users, only: [:show]
end

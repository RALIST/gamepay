Rails.application.routes.draw do
  root 'main#index'

  resources :games
end

Rails.application.routes.draw do
  get '/', to: 'restaurants#index', as: 'restaurants'
  resources :restaurants, only: %i[show new create] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end

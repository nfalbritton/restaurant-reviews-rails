Rails.application.routes.draw do
  root "restaurants#index"

  resources :restaurants, only:[:index, :new, :create, :show] do
    resources :reviews, only:[:index, :new, :create]
  end
end

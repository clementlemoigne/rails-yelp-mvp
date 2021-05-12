Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

end

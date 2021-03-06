Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # a user can see the list of cocktails
  # GET "cocktails" = INDEX

  # a user can see the details of a given cocktail, with the dose needed for each ingredient
  # GET "cocktails/:id" = SHOW

  # a user can create a new cocktail
  # GET "cocktails/new" = NEW
  # POST "cocktails" = CREATE
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

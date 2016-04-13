IngredientPreferences::Application.routes.draw do
  root "ingredients#index"
  resources :customers, only: [:index, :show, :new, :create] do
    resources :preferences, only: [:create]
  end
  resources :ingredients, only: [:index, :new, :create, :show]
end

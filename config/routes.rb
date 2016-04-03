IngredientPreferences::Application.routes.draw do
  resources :customers, only: [:index, :show, :new, :create]
  resources :ingredients, only: [:index, :new, :create]
end

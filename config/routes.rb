KucharynaApi::Application.routes.draw do
  resources :recipes, only: [:index, :show, :update]
end

Rails.application.routes.draw do
  resources :reviews
  resources :roasts
  resources :roasters
  resources :servings
  resources :reviewers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

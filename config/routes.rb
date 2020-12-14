Rails.application.routes.draw do
  root "welcome#index"

  get '/food_search', to: 'food_search#index'
end

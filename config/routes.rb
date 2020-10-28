Rails.application.routes.draw do
  resources :categories
  get 'archives/index'
  resources :entries
  root to: "entries#index" # entries controller and index action - root url of this app
end

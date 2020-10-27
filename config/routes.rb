Rails.application.routes.draw do
  get 'archives/index'
  resources :entries
  root to: "entries#index" # entries controller and index action - root url of this app
end

Rails.application.routes.draw do
  get '/foodlogs', to: "foodlogs#index", as: "foodlogs"
  get 'foodlogs/new', to: "foodlogs#new", as: "new_foodlogs"
  post '/foodlogs', to: "foodlogs#create"
  get 'foodlogs/:id/edit', to: "foodlogs#edit", as: "edit_foodlog"
  get 'foodlogs/:id', to: "foodlogs#show", as: "foodlog"
  patch 'foodlogs/:id', to: "foodlogs#update"
  delete 'foodlogs/:id', to: "foodlogs#destroy"
  # resources :foodlogs
end

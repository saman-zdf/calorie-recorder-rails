Rails.application.routes.draw do
  resources :todolists
  root "home#index"
  get '/foodlogs', to: "foodlogs#index", as: "foodlogs"
  get 'foodlogs/new', to: "foodlogs#new", as: "new_foodlogs"
  post '/foodlogs', to: "foodlogs#create"
  get 'foodlogs/:id/edit', to: "foodlogs#edit", as: "edit_foodlog"
  get 'foodlogs/:id', to: "foodlogs#show", as: "foodlog"
  patch 'foodlogs/:id', to: "foodlogs#update"
  delete 'foodlogs/:id', to: "foodlogs#destroy"
  devise_scope :user do
    get "/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
    delete "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
    get "/sign_up", :to => "devise/registrations#new" # Add a Custom Route for Registrations
    get "/profile", :to => "devise/registrations#edit"
    devise_for :user
  end
end

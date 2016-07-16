Rails.application.routes.draw do
  root to: "application#about"

  get "about", to: "application#about"

  get "runs", to: "runs#index"

  get "runs/:id", to: "runs#show", as: :run

  post "runs", to: "runs#create"

  get "runs/:id/edit", to: "runs#edit", as: :run_edit

  patch "runs/:id", to: "runs#update"

  delete "runs/:id", to: "runs#destroy"

  get "comments/new", to: "comments#new"

  post "comments", to: "comments#create"

end

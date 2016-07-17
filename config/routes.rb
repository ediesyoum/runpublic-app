Rails.application.routes.draw do
  root to: "application#about"
  get "about", to: "application#about"

  get "runs", to: "runs#index"
  get "runs/:id", to: "runs#show", as: :run
<<<<<<< HEAD

  get "runs/new", to: "runs#create"

=======
  get "runs/new", to: "runs#new"
>>>>>>> ad9b0737825d0cc268fe285640b99fb49ca616e3
  get "runs/:id/edit", to: "runs#edit", as: :run_edit

  patch "runs/:id", to: "runs#update"
  delete "runs/:id", to: "runs#destroy"

  get "comments/new", to: "comments#new"
  post "comments", to: "comments#create"

end

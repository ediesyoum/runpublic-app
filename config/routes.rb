Rails.application.routes.draw do
  root to: "application#about"

  get "about", to: "application#about"
end

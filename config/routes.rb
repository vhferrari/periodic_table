Rails.application.routes.draw do
  root to: "welcome#index"
  resources :table, only: %i[index show]
  get 'about', to: "table#about"
end

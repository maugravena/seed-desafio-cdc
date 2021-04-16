Rails.application.routes.draw do
  resources :authors, only: %i[create]
  resources :categories, only: %[create]
  resources :books, only: %[create]
end

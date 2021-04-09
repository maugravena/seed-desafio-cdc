Rails.application.routes.draw do
  resources :authors, only: %i[create]
end

Rails.application.routes.draw do
  root 'locations#index'

  resources :locations, only: %i[index]
end

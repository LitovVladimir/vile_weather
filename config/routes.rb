Rails.application.routes.draw do
  root 'locations#index'

  resources :locations do
    get 'index'
    get 'download_weather'
  end
end

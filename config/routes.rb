Rails.application.routes.draw do
  root "artists#index"

  resources :artists do
    resources :albums
  end

  resources :albums do
    resources :songs
  end
end

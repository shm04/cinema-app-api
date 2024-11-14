Rails.application.routes.draw do
  resources :cinemas do
    resources :shows
    resources :rooms do
      resources :seats
    end
    resources :movies
  end
end

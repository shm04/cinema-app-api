Rails.application.routes.draw do
  resources :cinemas do
    resources :rooms do
      resources :seats
    end
    resources :movies do
      resources :shows, only: [:index, :show, :create, :destroy]
    end
  end
end
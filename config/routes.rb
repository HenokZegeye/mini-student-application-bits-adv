Rails.application.routes.draw do
  resources :applicants, only: [:index, :create]
end

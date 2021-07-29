Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource  :couriers, only: %i[create update show]
  resources :packages
end

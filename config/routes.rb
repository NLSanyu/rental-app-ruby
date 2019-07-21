Rails.application.routes.draw do
  resources :groups do
    resources :units
  end
end

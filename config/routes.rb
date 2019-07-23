Rails.application.routes.draw do
  resources :groups do
    get :search, on: :collection
    resources :units
  end
end

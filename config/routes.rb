Rails.application.routes.draw do
  resources :groups do
    get :search, on: :collection
    resources :units do
      get :search, on: :collection
    end
  end
end

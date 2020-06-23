# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :groups do
        get :search, on: :collection
        resources :units do
          get :search, on: :collection
        end
      end
    end
  end
end

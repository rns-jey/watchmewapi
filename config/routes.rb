# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1, defaults: { format: :json } do
    resources :accounts, only: %i[create update] do
      resources :contacts
    end
    resource :sessions, only: %i[create destroy]
    resources :users, only: [:create]
  end
end

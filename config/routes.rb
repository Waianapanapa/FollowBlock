Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  get "dashboard", to: "dashboards#show"

  resources :b
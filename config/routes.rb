# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :users, only: [:show] do
    member do
      get :following, :followers
    end
  end

  root 'articles#index'
  resources :relationships, only: %i[create destroy]
  resources :articles do
    resources :comments
  end
end

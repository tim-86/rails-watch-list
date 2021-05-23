Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:destroy, :index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :movies, only: :show
      end
  resources :bookmarks, only: [:destroy]
  end

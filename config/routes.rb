Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:new, :create, :index, :show] do
  resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

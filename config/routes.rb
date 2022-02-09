Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  resources :lists, only: [:show, :new, :create, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

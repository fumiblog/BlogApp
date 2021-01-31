Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :blogs
  get 'homes/top'
  root 'homes#top'

  namespace 'admins' do
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :footprints, only: [:index, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

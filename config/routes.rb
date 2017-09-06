Rails.application.routes.draw do

  resources :quality_controls

  resources :entry_controls do
    resources :batches
  end

  resources :batches do
    resources :quality_controls
  end

  resources :organizations do
    resources :collection_centers
    resources :entry_controls
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  get 'dashboard', to: 'static_pages#dashboard'


  devise_scope :user do
  	root to: "users/sessions#new"
  end
end

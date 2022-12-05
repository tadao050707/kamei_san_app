Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :answers
  resources :groups
  resources :quizzes
  root to: "top#show"
  devise_for :users, controllers: {
    invitations: 'users/invitations'
  }
  resources :users, only: :show
  resources :answers
  resources :favorites, only: [:index, :create, :destroy]

end

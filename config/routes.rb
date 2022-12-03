Rails.application.routes.draw do
  resources :answers
  resources :groups
  resources :quizzes
  root to: "answers#index"
  devise_for :users, controllers: {
    invitations: 'users/invitations'
  }
  resources :users, only: :show
  resources :answers
  resources :favorites, only: [:index, :create, :destroy]
end

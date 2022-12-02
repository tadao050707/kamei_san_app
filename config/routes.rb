Rails.application.routes.draw do
  resources :answers
  resources :groups
  resources :quizzes
  root to: "quizzes#index"
  devise_for :users, controllers: {
    invitations: 'users/invitations'
  }
  resources :users, only: :show
  resources :answers
end

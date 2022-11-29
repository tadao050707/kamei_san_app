Rails.application.routes.draw do
  resources :groups
  resources :quizzes
  root to: "quizzes#index"
  devise_for :users, controllers: {
    invitations: 'users/invitations'
  }
  resources :users, only: :show
end

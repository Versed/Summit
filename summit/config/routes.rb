Rails.application.routes.draw do
  resources :schools
  resources :user_sessions, only: [:new, :create]
  resources :users

  resources :sections do
    resources :news
    resources :articles
  end
end

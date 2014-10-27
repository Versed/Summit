Rails.application.routes.draw do
  get 'user_sessions/new'

  get 'user_sessions/create'

  resources :schools

  resources :users

  resources :sections do
    resources :news
    resources :articles
  end
end

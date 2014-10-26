Rails.application.routes.draw do
  resources :schools

  resources :users

  resources :sections do
    resources :news
    resources :articles
  end
end

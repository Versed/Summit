Rails.application.routes.draw do
  resources :users

  resources :sections do
    resources :news
    resources :articles
  end
end

Rails.application.routes.draw do
  resources :sections do
    resources :news
    resources :articles
  end
end

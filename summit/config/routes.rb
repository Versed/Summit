Rails.application.routes.draw do
  resources :sections do
    resources :news
  end
end

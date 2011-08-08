KindleLinks::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  root to: "home#index"

  namespace :admin do
    root to: "users#index"
    resources :users
    resources :kindles
  end
end

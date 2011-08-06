KindleLinks::Application.routes.draw do
  devise_for :users

  namespace :admin do
    root to: "users#index"
    resources :users
    resources :kindles
  end
end

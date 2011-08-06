KindleLinks::Application.routes.draw do
  devise_for :users
  root to: "users#sign_in"

  namespace :admin do
    root to: "users#index"
    resources :users
    resources :kindles
  end
end

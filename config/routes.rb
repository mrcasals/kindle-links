KindleLinks::Application.routes.draw do
  namespace :admin do
    root to: "users#index"
    resources :users
  end
end

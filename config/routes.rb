Laughinworks::Application.routes.draw do
  root :to => "top#index"
  get "top/about"
  get "top/work"
  get "top/contact"

  resources :articles, :only => [:index, :show]

  namespace :admin do
    resources :articles
  end
end

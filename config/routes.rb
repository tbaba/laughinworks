Laughinworks::Application.routes.draw do
  root :to => "top#index"
  get "top/about", :as => "about"
  get "top/work", :as => "work"
  get "top/contact", :as => "contact"

  resources :articles, :only => [:index, :show]

  namespace :admin do
    resources :articles
  end
end

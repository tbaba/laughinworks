Laughinworks::Application.routes.draw do
  get "articles/index"

  get "articles/show"

  root :to => "top#index"
  get "top/about"
  get "top/work"
  get "top/contact"
end

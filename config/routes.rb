Laughinworks::Application.routes.draw do
  root :to => "top#index"
  get "top/about"
  get "top/work"
  get "top/contact"
end

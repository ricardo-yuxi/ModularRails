Dwl::Core::Engine.routes.draw do
  devise_for :users, class_name: "Dwl::User", module: :devise
  namespace :admin do
    get '/' => 'admin#index'
    resources :users, only: :index
  end
  root to: "dashboard#index"
end

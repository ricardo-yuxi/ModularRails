Dwl::Core::Engine.routes.draw do
  devise_for :users, class_name: "Dwl::User", module: :devise
  root to: "dashboard#index"
end

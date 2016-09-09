Dwl::Core::Engine.routes.draw do
  scope module: 'orders' do
    resources :orders
  end
end

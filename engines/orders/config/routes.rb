Dwl::Core::Engine.routes.draw do
  scope module: 'orders' do
    resources :orders, only: [:index, :new, :create]
    get 'orders/metrics' =>  'metrics#index'
  end
end

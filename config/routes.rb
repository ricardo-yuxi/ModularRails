Rails.application.routes.draw do
  mount Dwl::Core::Engine => "/", as: 'dwl'
end

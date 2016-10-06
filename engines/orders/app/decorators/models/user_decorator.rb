Dwl::User.class_eval do
  has_many :orders, class_name: Dwl::Orders::Order
end

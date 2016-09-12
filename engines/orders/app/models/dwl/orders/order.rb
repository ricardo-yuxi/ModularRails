module Dwl::Orders
  class Order < ActiveRecord::Base
    belongs_to :position
    belongs_to :item
  end
end

module Dwl::Orders
  class Order < ApplicationRecord
    belongs_to :position
    belongs_to :item
  end
end

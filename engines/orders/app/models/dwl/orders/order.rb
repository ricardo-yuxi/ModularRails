module Dwl::Orders
  class Order < ActiveRecord::Base
    belongs_to :position
    belongs_to :item

    enum status: %w{created assigned delivered pickedup cancelled}
  end
end

class ModifyOrders < ActiveRecord::Migration[5.0]
  def change
    remove_columns(:dwl_orders_orders, :customer_name, :customer_name, :customer_phone,
                   :giveaway_selection, :deliver_order_number, :scan_badge_info,
                   :order_compartment, :delivery_method, :assigned_date,
                   :delivered_date, :pickup_email_sent_date, :pickup_date)

    add_reference :dwl_orders_orders, :user
  end
end

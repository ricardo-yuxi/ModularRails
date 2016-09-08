class CreateDwlOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :dwl_orders_orders do |t|
      t.string :customer_name
      t.string :customer_name
      t.string :customer_phone
      t.string :giveaway_selection
      t.string :deliver_order_number
      t.text :scan_badge_info
      t.integer :order_compartment
      t.integer :delivery_method, default: 0, null: false
      t.integer :status, default: 0, null: false
      t.datetime :assigned_date
      t.datetime :delivered_date
      t.datetime :pickup_email_sent_date
      t.datetime :pickup_date
      t.references :position, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

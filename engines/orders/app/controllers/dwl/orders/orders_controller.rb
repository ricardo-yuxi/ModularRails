require_dependency "dwl/application_controller"

module Dwl
  module Orders
    class OrdersController < ApplicationController
      before_action :set_order, only: [:show, :edit, :update, :destroy]

      # GET /orders
      def index
        @orders = Order.all
      end

      # GET /orders/new
      def new
        @order = Order.new
      end

      # POST /orders
      def create
        @order = Order.new(order_params)

        if @order.save
          redirect_to orders_path, notice: 'Order was successfully created.'
        else
          render :new
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_order
          @order = Order.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def order_params
          params.require(:order).permit(:customer_name, :customer_phone, :giveaway_selection,
                                        :deliver_order_number, :scan_badge_info,
                                        :order_compartment, :delivery_method, :status,
                                        :assigned_date, :delivered_date,
                                        :pickup_email_sent_date, :pickup_date, :position_id,
                                        :item_id)
        end
    end

  end
end

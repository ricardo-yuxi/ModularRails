module Dwl
  module Admin
    class AdminController < ApplicationController
      authorize_resource :class => false

      def index
      end
    end
  end
end

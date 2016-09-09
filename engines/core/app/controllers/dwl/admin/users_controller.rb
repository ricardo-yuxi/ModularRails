module Dwl
  module Admin
    class UsersController < AdminController

      def index
        @users = Dwl::User.ordered
      end
    end
  end
end

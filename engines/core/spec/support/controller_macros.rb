module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
    end
  end

  def set_engine_routes
    before(:each) do
      @routes = Dwl::Core::Engine.routes
    end
  end
end

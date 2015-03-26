require 'rails_helper'

RSpec.describe AuthController, type: :controller do

  describe "GET #login" do
    it "redirects to auth/facebook" do
      get :login
      expect(response).to redirect_to "/auth/facebook"
    end
  end

end

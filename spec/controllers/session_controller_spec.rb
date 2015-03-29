require 'rails_helper'

describe SessionController do
  # let(:john) { create :user, :with_auth }
  let(:uid) { "1234567890" }
  let(:provider) { "facebook" }
  let(:auth_response) { create(:auth_response, id: uid) }

  describe 'create' do
    before do
      @request.env["omniauth.auth"] = auth_response
    end

    after do
      expect(session[:user_id]).to_not be nil
      expect(response).to redirect_to(root_url)
    end

    describe 'when the user is not registered' do
      it 'creates a user from auth response' do
        get :create, provider: provider
        expect(User.where(uid: uid).count).to eq 1
      end
    end

    describe 'when the user is already registered' do
      before do
        create :user, :with_auth, id: uid
      end

      it 'does not create a user from auth response' do
        get :create, provider: provider
        expect(User.where(uid: uid).count).to eq 1
      end
    end
  end

  describe 'destroy' do
    before do
      session[:user_id] = "1"
    end

    describe 'when destroy is called' do
      it 'will remove the user_id' do
        get :destroy
        expect(session[:user_id]).to be nil
        expect(response).to redirect_to(root_url)
      end
    end
  end
end

require "rails_helper"
require_relative 'pages/home_page'

describe "authentication", :type => :feature do

  before :all do
    OmniAuth.config.test_mode = true
  end

  before :each do
    OmniAuth.config.mock_auth[:facebook] = nil
    @home = HomePage.new
    @home.load
    expect(@home).to be_displayed
  end

  it 'should show a facebook login link' do
    expect(@home).to have_facebook_login_link
  end

  describe 'facebook login link' do
    let(:provider) { 'facebook' }
    let(:uid) { '1234567890' }
    let(:no_of_users) { User.count }

    before do
      OmniAuth.config.mock_auth[:facebook] = auth_response
      @home.facebook_login_link.click
    end

    describe 'when the user is already registered' do
      let!(:user) { create(:user, :with_auth, id: uid) }
      let(:auth_response) { create(:auth_response, id: uid, auth_provider: 'facebook', username: user.username) }

      it 'will redirect back to the user' do
        expect(@home).to be_displayed
      end

      it 'will not show the facebook login link' do
        expect(@home).to be_displayed
        expect(@home).to_not have_facebook_login_link
      end

      it 'will not create a new user' do
        expect(no_of_users).to eq 1
      end
    end

    describe 'when the user is not registered before' do
      let(:auth_response) { create(:auth_response, id: uid, auth_provider: 'facebook') }

      it 'will redirect back to the user' do
        expect(@home).to be_displayed
      end

      it 'will not show the facebook login link' do
        expect(@home).to be_displayed
        expect(@home).to_not have_facebook_login_link
      end

      it 'will show the users name' do
        new_user = User.first
        expect(@home.nav_bar).to have_content new_user.username
      end

      it 'will create a new user' do
        expect(no_of_users).to eq 1
      end
    end
  end
end

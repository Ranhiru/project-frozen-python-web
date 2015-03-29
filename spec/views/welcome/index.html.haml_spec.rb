require 'rails_helper'

RSpec.describe "welcome/index.html.haml", type: :view do
  describe 'when the user is not logged in' do
    it 'shows a login link' do
      render
      expect(rendered).to have_link("Login", href: "/login")
    end
  end

  describe 'when the user is logged in' do
    let(:user) {create :user}

    before do
      allow(view).to receive(:current_user).and_return(user)
      render
    end

    it "does not show the login link" do
      expect(rendered).to_not have_link("Login", href: "/login")
    end

    it "shows the currently logged in user's name" do
      expect(rendered).to have_text(user.username)
    end
  end
end


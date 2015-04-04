require 'rails_helper'

RSpec.describe "shared/_navbar.html.haml", type: :view do

  describe 'navigation bar' do
    it 'shows the navigation links' do
      render
      expect(rendered).to have_link("Home", href: "#")
      expect(rendered).to have_link("Popular", href: "#")
      expect(rendered).to have_link("Most Shared", href: "#")
      expect(rendered).to have_link("New", href: "#")
      expect(rendered).to have_link("Sign In/Register", href: "/login")
    end
  end

  describe 'when the user is logged in' do
    let(:user) {create :user}

    before do
      allow(view).to receive(:current_user).and_return(user)
      render
    end

    it "does not show the login link" do
      expect(rendered).to_not have_link("Sign In/Register", href: "/login")
    end

    it "shows the currently logged in user's name" do
      expect(rendered).to have_text(user.username)
    end
  end
end



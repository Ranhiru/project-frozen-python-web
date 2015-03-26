require "rails_helper"
require_relative 'pages/home_page'

describe "facebook authentication", :type => :feature do

  let(:home_page) { HomePage.new }

  before :each do
    home_page.load
  end

  it 'should show a facebook login link' do
    expect(home_page).to be_displayed
    expect(home_page).to have_facebook_login_link
  end
end

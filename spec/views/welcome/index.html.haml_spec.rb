require 'rails_helper'

RSpec.describe "welcome/index.html.haml", type: :view do
  it 'shows a facebook login link' do
    render
    expect(rendered).to have_link("Login", href: "/login")
  end
end


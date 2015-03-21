require 'rails_helper'

describe User do
  describe 'presence validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email_address) }
    it { should validate_presence_of(:profile_pic_url) }
  end

  describe 'have_many validations' do
    it { should have_many(:compliments) }
    it { should have_many(:labels) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
  end
end

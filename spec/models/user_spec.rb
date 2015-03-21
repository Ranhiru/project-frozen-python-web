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

  describe 'other validations' do
    describe 'username' do
      it { should validate_length_of(:username).is_at_least(3) }

      it 'should not allow to create a user with the same username' do
       u1 = create(:user)
       u2 = build(:user)
       u2.username = u1.username
       expect{ u2.save! }.to raise_exception
      end

      it 'should not allow to update to the same username' do
       u1 = create(:user)
       u2 = create(:user)
       u1.username = u2.username
       expect{ u1.save! }.to raise_exception
      end
    end

    describe 'email' do
      it 'should not allow to create a user with the same email' do
       u1 = create(:user)
       u2 = build(:user)
       u2.email_address = u1.email_address
       expect{ u2.save! }.to raise_exception
      end

      it 'should not allow to update to the the same email' do
        u1 = create(:user)
        u2 = create(:user)
        u1.email_address = u2.email_address
        expect{ u1.save! }.to raise_exception
      end
    end
  end
end

require 'rails_helper'

describe Like do

  describe 'belongs to validations' do
    it { should belong_to(:user) }
    it { should belong_to(:compliment) }
  end

  describe 'user' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
    it { should have_db_column(:user_id) }
    it { should have_db_index(:user_id) }
  end

  describe 'compliment' do
    it { should belong_to(:compliment) }
    it { should validate_presence_of(:compliment) }
    it { should have_db_column(:compliment_id) }
    it { should have_db_index(:compliment_id) }
  end

  describe 'uniqueness' do
    it 'should not let the same user like the same compliment twice' do
      new_user = create(:user)
      new_compliment = build(:compliment)

      new_compliment.user = new_user
      new_compliment.save!

      new_like = Like.new
      new_like.user = new_user
      new_like.compliment = new_compliment

      new_like.save!

      another_like = Like.new

      another_like.user = new_user
      another_like.compliment = new_compliment

      expect{ another_like.save! }.to raise_exception
    end
  end
end

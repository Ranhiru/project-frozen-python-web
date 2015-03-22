require 'rails_helper'

describe Label do

  describe 'have_many validations' do
    it { should have_many(:compliment_labels) }
    it { should have_many(:compliments) }
  end

  describe 'label title' do
    it { should validate_presence_of(:label_title) }
    it { should validate_length_of(:label_title).is_at_least(2) }
  end

  describe 'user' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
    it { should have_db_column(:user_id) }
    it { should have_db_index(:user_id) }
  end

  describe 'uniqueness' do
    it 'should not let the same label be assigned to the compliment twice' do
      new_user = create(:user)
      new_compliment = create(:compliment, user: new_user)
      new_compliment.save!

      new_label = create(:label)
      new_label.save!

      compliment_label_1 = create(:compliment_label, user: new_user, compliment: new_compliment, label: new_label)
      compliment_label_2 = build(:compliment_label, user: new_user, compliment: new_compliment, label: new_label)

      expect{ compliment_label_2.save! }.to raise_exception
    end
  end
end

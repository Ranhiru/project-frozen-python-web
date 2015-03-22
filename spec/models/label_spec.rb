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

end

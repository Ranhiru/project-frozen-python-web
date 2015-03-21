require 'rails_helper'

describe Compliment do

  describe 'have_many validations' do
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should have_many(:compliment_labels) }
    it { should have_many(:labels) }
  end

  describe 'user' do
    it { should validate_presence_of(:user) }
    it { should have_db_column(:user_id) }
    it { should have_db_index(:user_id) }
  end

  describe 'compliment text' do
    it { should validate_presence_of(:compliment_text) }
    it { should validate_length_of(:compliment_text).is_at_least(3) }
  end
end

require 'rails_helper'

describe ComplimentLabel do

  describe 'belongs to validations' do
    it { should belong_to(:compliment) }
    it { should belong_to(:label) }
    it { should belong_to(:user) }
  end

  describe 'user' do
    it { should validate_presence_of(:user) }
    it { should have_db_column(:user_id) }
    it { should have_db_index(:user_id) }
  end

  describe 'label' do
    it { should validate_presence_of(:label) }
    it { should have_db_column(:label_id) }
    it { should have_db_index(:label_id) }
  end
end

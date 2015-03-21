require 'rails_helper'

describe Comment do

  describe 'Comment Text' do
    it { should validate_presence_of(:comment_text) }
    it { should validate_length_of(:comment_text).is_at_least(2) }
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
end

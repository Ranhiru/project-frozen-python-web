class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :text
    add_column :users, :oauth_token, :text
    add_column :users, :oauth_expires_at, :datetime
    add_column :users, :provider, :text
  end
end

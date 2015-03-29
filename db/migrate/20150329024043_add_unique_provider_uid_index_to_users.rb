class AddUniqueProviderUidIndexToUsers < ActiveRecord::Migration
  def change
    add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  end
end

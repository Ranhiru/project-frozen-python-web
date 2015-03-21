class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :compliment, index: true
      t.references :user, index: true
      t.text :comment_text

      t.timestamps null: false
    end
    add_foreign_key :comments, :compliments
    add_foreign_key :comments, :users
  end
end

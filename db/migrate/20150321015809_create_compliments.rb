class CreateCompliments < ActiveRecord::Migration
  def change
    create_table :compliments do |t|
      t.references :user, index: true
      t.text :compliment_text
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :compliments, :users
  end
end

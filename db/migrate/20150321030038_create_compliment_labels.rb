class CreateComplimentLabels < ActiveRecord::Migration
  def change
    create_table :compliment_labels do |t|
      t.references :compliment, index: true
      t.references :label, index: true
      t.references :user, index: true

      t.timestamps null: false
    end

    add_foreign_key :compliment_labels, :compliments
    add_foreign_key :compliment_labels, :labels
    add_foreign_key :compliment_labels, :users
  end
end

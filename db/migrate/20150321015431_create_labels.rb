class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :label_title
      t.text :label_description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :labels, :users
  end
end

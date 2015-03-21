class AddUniqueIndexToComplimentLabelsTable < ActiveRecord::Migration
  def change
    add_index(:compliment_labels, [:compliment_id, :label_id], :unique => true)
  end
end

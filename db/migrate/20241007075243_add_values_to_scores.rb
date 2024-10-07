class AddValuesToScores < ActiveRecord::Migration[7.2]
  def change
    add_column :scores, :value_p1, :integer
    add_column :scores, :value_p2, :integer
    add_column :scores, :value_p3, :integer
    add_column :scores, :value_p4, :integer
  end
end

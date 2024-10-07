class RemoveValueFromScores < ActiveRecord::Migration[7.2]
  def change
    remove_column :scores, :value, :integer
  end
end

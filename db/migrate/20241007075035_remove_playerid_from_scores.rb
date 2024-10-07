class RemovePlayeridFromScores < ActiveRecord::Migration[7.2]
  def change
    remove_column :scores, :player_id, :integer
  end
end

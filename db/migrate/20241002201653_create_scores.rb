class CreateScores < ActiveRecord::Migration[7.2]
  def change
    create_table :scores do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :score_position
      t.integer :value

      t.timestamps
    end
  end
end

class CreateMinigames < ActiveRecord::Migration[7.2]
  def change
    create_table :minigames do |t|
      t.integer :game_id
      t.integer :player_id
      t.boolean :min
      t.boolean :max
      t.boolean :srce
      t.boolean :dame
      t.boolean :kralj
      t.boolean :lora
      t.boolean :prognoza

      t.timestamps
    end
  end
end

class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :games_played
      t.integer :wins

      t.timestamps
    end
  end
end

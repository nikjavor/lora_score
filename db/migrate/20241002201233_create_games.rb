class CreateGames < ActiveRecord::Migration[7.2]
  def change
    create_table :games do |t|
      t.string :game_name

      t.timestamps
    end
  end
end

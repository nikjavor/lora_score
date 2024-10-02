class AddPLayersToGames < ActiveRecord::Migration[7.2]
  def change
    add_column :games, :p1, :integer
    add_column :games, :p2, :integer
    add_column :games, :p3, :integer
    add_column :games, :p4, :integer
  end
end

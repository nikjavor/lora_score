class RenameSrceAtMinigames < ActiveRecord::Migration[7.2]
  def change
    rename_column :minigames, :srce, :srca
  end
end

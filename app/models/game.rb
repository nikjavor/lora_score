class Game < ApplicationRecord
  validates :game_name, presence: true
  validates :p1, presence: true
  validates :p2, presence: true
  validates :p3, presence: true
  validates :p4, presence: true

  validate :check_different_players

  def check_different_players
    players = [p1, p2, p3, p4]
    len = players.length
    for i in 1..len do
      for j in 1..len do
        if i != j && players[i] == players[j]
          err_s = "must be unique to others"
          errors.add(:p1, err_s) if i = 1
          errors.add(:p2, err_s) if i = 2
          errors.add(:p3, err_s) if i = 3
          errors.add(:p4, err_s) if i = 4
          return
        end
      end
    end
  end

end
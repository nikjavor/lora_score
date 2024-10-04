class Game < ApplicationRecord
  validates :game_name, presence: true
  validates :p1, presence: true
  validates :p2, presence: true
  validates :p3, presence: true
  validates :p4, presence: true
end

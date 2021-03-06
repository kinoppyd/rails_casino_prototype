class GameStatus < ActiveRecord::Base
  belongs_to :player
  # enum is not support in 4.0.x
  # enum status: {join_the_game: 0, win:1, lose: 2, rebuy: 3}

  validates :player_id, presence: true
  validates :status, presence: true, numericality: true

  default_scope -> { order("created_at desc") }
end

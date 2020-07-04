class GameServer < ApplicationRecord
	belongs_to :game
	has_many :lots
end

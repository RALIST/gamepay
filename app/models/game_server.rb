class GameServer < ApplicationRecord
	belongs_to :game
	has_many :lots

	def self.tags
		%w(RU NA|EU Free)
	end
end

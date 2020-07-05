class LotType < ApplicationRecord
	has_many :lots
	validates :name, presence: true, uniqueness: true

	def self.types
		%w(coins accounts boosting coaching items other)
	end
end

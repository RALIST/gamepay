class Lot < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :game
  belongs_to :user
end

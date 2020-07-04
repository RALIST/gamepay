class Lot < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :game, counter_cache: true
  belongs_to :user, counter_cache: true
  belongs_to :lot_type
  belongs_to :game_server
end

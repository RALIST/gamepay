class Lot < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :game, counter_cache: true
  belongs_to :user, counter_cache: true
  belongs_to :lot_type
  belongs_to :game_server, optional: true

  default_scope -> { includes(:user, :game_server, :lot_type, :game) }
  scope :by_tag, ->(tag) { where(game_servers: { tag: tag }) if tag.present? }
  scope :by_type, ->(type) { where(lot_types: { name: type }) if type.present? && type != 'all' }
  scope :by_server, -> (id) { where(game_servers: { id: id }) if id.present? }

end

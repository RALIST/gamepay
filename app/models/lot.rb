class Lot < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :game, counter_cache: true
  belongs_to :user, counter_cache: true
  belongs_to :lot_type
  belongs_to :game_server, optional: true

  default_scope -> { includes(:user, :game_server, :lot_type, :game) }
  scope :by_tag, ->(tag) { all.where(game_servers: { tag: tag })}
  scope :by_type, ->(type) { all.where(lot_types: { name: type }) unless type == 'all'}

end

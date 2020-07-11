class Game < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, presence: true, uniqueness: true

  has_many :lots, dependent: :destroy
  has_many :lot_types, through: :lots
  has_many :game_servers

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end

  def filtered_game_servers(tag = nil, type = nil)
    servers = game_servers.distinct
    if tag && tag != 'all'
      servers = servers.where(tag: tag)
    else
      servers
    end
    servers.joins(:lots).map { |s| [s.name + " (#{s.tag})", s.id] }
  end
end

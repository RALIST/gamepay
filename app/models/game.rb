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
end

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'

    create_table :games, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :lots_count, default: 0
      t.string :server_name
    end
  end
end

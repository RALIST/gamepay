class CreateGames < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'
    create_table :games, type: :uuid do |t|
      t.string :name
      t.text :description
    end
  end
end

class CreateLots < ActiveRecord::Migration[6.0]
  def change
    create_table :lots, id: :uuid do |t|
      t.string :name, index: true
      t.text :description
      t.float :price
      t.string :type
      t.references :user, type: :uuid
      t.references :game, type: :uuid
      t.references :game_server, type: :uuid
      t.references :lot_type, type: :uuid
      t.string :slug, index: {unique: true }
    end
  end
end

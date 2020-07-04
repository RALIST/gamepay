class CreateGameServers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_servers, id: :uuid do |t|
      t.string :name
      t.string :tag
      t.references :game, type: :uuid
      t.timestamps
    end
  end
end

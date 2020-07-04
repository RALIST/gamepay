class AddSlugToGames < ActiveRecord::Migration[6.0]
  def change
    change_table :games do |t|
      t.string :slug, index: { unique: true }
    end
  end
end

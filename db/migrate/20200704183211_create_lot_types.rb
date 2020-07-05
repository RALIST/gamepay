class CreateLotTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :lot_types, id: :uuid do |t|
      t.string :name, index: { unique: true }
    end
  end
end

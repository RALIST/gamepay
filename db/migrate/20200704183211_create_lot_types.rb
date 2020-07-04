class CreateLotTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :lot_types, id: :uuid do |t|
      t.string :name
    end
  end
end

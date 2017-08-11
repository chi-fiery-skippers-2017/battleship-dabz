class CreateShipTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :ship_types do |t|
      t.string  :name
      t.integer :length

      t.timestamps
    end
  end
end

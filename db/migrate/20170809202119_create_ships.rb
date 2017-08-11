class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.integer :ship_type_id
      t.string :start_point
      t.string :orientation
      t.integer :board_id

      t.timestamps
    end
  end
end

class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.integer :board_id
      t.integer :length
      t.string :name
      t.string :start_point
      t.string :end_point

      t.timestamps
    end
  end
end

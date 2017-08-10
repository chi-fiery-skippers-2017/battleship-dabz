class CreateShots < ActiveRecord::Migration[5.1]
  def change
    create_table :shots do |t|
      t.string :coordinate
      t.integer :user_id
      t.integer :board_id

      t.timestamps
    end
  end
end

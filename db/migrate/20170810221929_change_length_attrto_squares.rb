class ChangeLengthAttrtoSquares < ActiveRecord::Migration[5.1]
  def change
    rename_column :ship_types, :length, :squares
  end
end

class Ship < ApplicationRecord
  belongs_to  :ship_type
  belongs_to  :board
end

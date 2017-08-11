class Game < ApplicationRecord
  has_many  :boards
  has_many  :players, through: :boards
  has_many  :shots, through: :boards
  has_many  :ships, through: :boards
  belongs_to  :creator, class_name: "User"
  belongs_to  :winner, class_name: "User", optional: true
end

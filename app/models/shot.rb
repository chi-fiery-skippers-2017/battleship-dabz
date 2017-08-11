class Shot < ApplicationRecord
  belongs_to  :board
  has_one :player, through: :board

  validates_uniqueness_of :coordinate
  
  def self.most_recent
    self.last
  end
end

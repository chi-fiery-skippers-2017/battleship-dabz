class User < ApplicationRecord
  has_many  :boards, foreign_key: :player_id
  has_many  :created_games, class_name: "Game", foreign_key: :creator_id
  has_many  :games, through: :boards, source: :game
  has_many :shots, through: :boards
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
end

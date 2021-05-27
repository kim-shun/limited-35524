class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  has_one :question
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  acts_as_followable 
  acts_as_follower
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_rides, class_name: "Ride", foreign_key: "user_id"

  has_many :ride_users
  has_many :rides, through: :ride_users
end

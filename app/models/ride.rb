class Ride < ApplicationRecord
	belongs_to :creator, class_name: "User", foreign_key: :user_id

	has_many :ride_users
	has_many :users, through: :ride_users

	mount_uploader :image, ImageUploader


#	def thumbnail
#		return self.image.variant(resize: '300x300')
#	end

end
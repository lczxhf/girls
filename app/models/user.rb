class User < ActiveRecord::Base
	has_many :pay_records
	has_many :user_likes
	has_many :user_imgs
	has_many :locations , as: :share_location
	validates_uniqueness_of :username
	has_secure_password

	validates :phone , length: {is: 11}
	validates :phone , numericality: { only_integer: true }
	validates :password_digest , presence: true
	validates :username , presence: true
	validates :price , numericality: {greater_than_or_equal_to: 0}
end

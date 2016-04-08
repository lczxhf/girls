class Member < ActiveRecord::Base
	has_many :pay_records
	has_many :user_likes
	has_many :locations , as: :share_location

	validates :openid , presence: true , uniqueness: true
end

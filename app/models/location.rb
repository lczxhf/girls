class Location < ActiveRecord::Base
	belongs_to :ShareLocation , polymorphic: true

	validates :share_location_id , presence: true
	validates :share_location_type, presence: true
end

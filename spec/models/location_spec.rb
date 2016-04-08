require 'rails_helper'

RSpec.describe Location, type: :model do
   it "share_location_id and share_location_type must be presence" do
   		Location.create(share_location_id:1)
		Location.count.should be == 0
   		Location.create(share_location_type:1)
		Location.count.should be ==0
   		Location.create(share_location_type:'member',share_location_id:1)
		Location.count.should be == 1
   end
end

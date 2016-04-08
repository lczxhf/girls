require 'rails_helper'

RSpec.describe UserLocation, type: :model do
   it "share_location_id and share_location_type must be presence" do
   		Location.create(share_location_id:1).should be_false
   		Location.create(share_location_type:1).should be_false
   		Location.create(share_location_type:'member',share_location_id:1).should be_true
   end
end

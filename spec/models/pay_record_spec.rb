require 'rails_helper'

RSpec.describe PayRecord, type: :model do
  it "price must greater than or equal to 0" do
  	   PayRecord.create(price:-1)
	   PayRecord.count.should be == 0
  	   PayRecord.create(price:0)
	   PayRecord.count.should be ==1
  	   PayRecord.create(price:1)
	   PayRecord.count.should be ==2
  end
end

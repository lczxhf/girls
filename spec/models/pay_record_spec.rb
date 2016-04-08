require 'rails_helper'

RSpec.describe PayRecord, type: :model do
  it "price must greater than or equal to 0" do
  	   PayRecord.create(price:-1).should be_false
  	   PayRecord.create(price:0).should be_true
  	   PayRecord.create(price:1).should be_true
  end
end

require 'rails_helper'

RSpec.describe Member, type: :model do
  it "validate openid uniqueness" do
  		Member.create(openid:'123')
		Member.count.should be == 1
  		Member.create(openid:'123')
		Member.count.should be == 1
  end

  it "validate openid presence" do
  	   Member.create(openid: '1234')
	   Member.count.should be == 1
	   Member.create()
	   Member.count.should be == 1
  end
end

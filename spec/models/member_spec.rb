require 'rails_helper'

RSpec.describe Member, type: :model do
  it "validate openid uniqueness" do
  		before { Member.create(openid:'123')}
  		Member.create(openid:'123').should be_false
  end

  it "validate openid presence" do
  	   Member.create(openid: '1234').should be_true
  	   Member.create().should be_false
  end
end

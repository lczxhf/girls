require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'phone' do 
  	before do
  		@user = User.new(password_digest:'123',username:'123',price:1)
  	end
  	it "length of phone must be 11" do
  	 	 @user.phone = 123456789
  	 	 @user.save.shoube be_false

  	 	 @user.phone = 12345678911
  	 	 @user.save.shoube be_true
  	end
  	it "type of phone must be integer" do
  	 	@user.phone = "linzihao"
  	 	@user.save.should be_false

  	 	@user.phone = 123213.2
  	 	@user.save.should be_false

  	 	@user.phone = "12345678901"
  	 	@user.save.should be_false
  	end
  end

  describe "username and password" do
  	  User.create(price:1,phone:12345678901,username:'123').should be_false

  	  User.create(price:1,phone:12345678901,password_digest:'123').should be_false


  	  User.create(price:1,phone:12345678901,password_digest:'123',username:'123').should be_true

  	  User.create(price:1,phone:12345678901,password_digest:'123',username:'123').should be_false
  end

  describe 'price' do
  	 it "price must greater than or equal to 0" do
  	   user = User.new(phone:12345678901,password_digest:'123',username:'123')
  	   user.price=-1
  	   user.save.should be_false

  	   user.price=0
  	   user.save.should be_true

  	   user.price=1
  	   user.save.should be_true
  	end
  end
end

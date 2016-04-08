require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'phone' do 
  	before :each do
  		@user = User.new(password:'123',username:'123',price:1)
  	end
  	it "length of phone must be 11" do
  	 	 @user.phone = 123456789
  	 	 @user.save
		 User.count.should be == 0

  	 	 @user.phone = 12345678911
  	 	 @user.save
		 User.count.should be == 1
  	end
  	it "type of phone must be integer" do
  	 	@user.phone = "linzihao"
  	 	@user.save
		User.count.should be == 0

  	 	@user.phone = 123213.2
  	 	@user.save
		User.count.should be == 0

  	 	@user.phone = "12345678901"
  	 	@user.save
		User.count.should be == 1
  	end
  end

  describe "username password" do
	before :each do 
		@user = User.new(price:1,phone:12345678901)
	end
	it "username and password must be presnece" do
	  @user.username = '123'
     	  @user.save
	  User.count.should be == 0
	  
	  @user.username = ''
	  @user.password = '123'
	  @user.save
	  User.count.should be == 0

	  @user.username = '123'
	  @user.password = '123'
	  @user.save
          User.count.should be == 1

  	  User.create(price:1,phone:12345678901,password:'123',username:'123')
	  User.count.should be == 1
	end
  end

  describe "other validate" do
  	 it "price must greater than or equal to 0" do
  	   user = User.new(phone:12345678901,password:'123',username:'123')
  	   user.price=-1
  	   user.save
	   User.count.should be == 0

  	   user.price=0
  	   user.save
	   User.count.should be == 1

	   user.price = 1
	   user.save
	   user.reload
	   user.price.should be == 1
  	end

        it "anthenticate password" do
  	   user = User.create!(price:1,phone:12345678901,password:'123',username:'123')
	   user.authenticate("123").should_not be false
	end
  end
end

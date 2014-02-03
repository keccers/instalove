require 'spec_helper'

describe User do 
	it "has a valid factory" do
		expect(create(:user)).to be_valid
	end

	it "is valid with a name, an email, a password and a password_confirmation" do
		user = User.new(name: "Justin Bieber", email: "2hot2handle@hotmail.com", password: "monkeybutt", password_confirmation: "monkeybutt")
		expect(user).to be_valid 
	end

	it "is invalid without a name" do
		#user = User.new(name: nil, email: "2hot2handle@hotmail.com", password: "monkeybutt", password_confirmation: "monkeybutt")
		expect(build(:user, :name => nil)).to have(1).errors_on(:name)
	end

	it "is invalid without an email" do
		user = User.new(name: "Justin Bieber", email: nil, password: "monkeybutt", password_confirmation: "monkeybutt")
		expect(user).to have(1).errors_on(:email)
	end
		
	it "is invalid without a password" do
		user = User.new(name: "Justin Bieber", email: "2hot2handle@hotmail.com", password: nil, password_confirmation: "monkeybutt")
		expect(user).to have(1).errors_on(:password)
	end
		
	it "is invalid without a password confirmation" do
		user = User.new(name: "Justin Bieber", email: "2hot2handle@hotmail.com", password: "monkeybutt", password_confirmation: nil)
		expect(user).to have(1).errors_on(:password_confirmation)
	end	

end
require 'spec_helper'
require 'user.rb'


describe User do
	it "is has a first name Malachai" do		
	user = User.new
	user.first_name.should === "Malachai" 
	end
end
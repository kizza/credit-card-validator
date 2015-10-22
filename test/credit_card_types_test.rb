require "minitest/autorun"
require "./lib/credit_card_types"


describe CreditCardTypes do

	before do
		@types = CreditCardTypes.new
	end

	it "should return valid matches" do
		@types.get_type('4111111111111111').must_equal 'VISA'
	end

	it "should return unknown when not matched" do
		@types.get_type('12345678').must_equal 'Unknown'
	end

end
require "minitest/autorun"
require "./lib/cards/mastercard_card_type"


describe MastercardCardType do

	before do
		@type = MastercardCardType.new
	end

	it "should start with 51 and be 16 chars long" do
		@type.match?('5111111111111111').must_equal true
	end

	it "should start with 52 and be 16 chars long" do
		@type.match?('5211111111111111').must_equal true
	end

	it "should start with 53 and be 16 chars long" do
		@type.match?('5311111111111111').must_equal true
	end

	it "should start with 54 and be 16 chars long" do
		@type.match?('5411111111111111').must_equal true
	end

	it "should start with 55 and be 16 chars long" do
		@type.match?('5511111111111111').must_equal true
	end
	
end
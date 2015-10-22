require "minitest/autorun"
require "./lib/cards/visa_card_type"


describe VisaCardType do

	before do
		@type = VisaCardType.new
	end

	it "should start with 4 and be 13 chars long" do
		@type.match?('4111111111111').must_equal true
	end

	it "should start with 4 and be 16 chars long" do
		@type.match?('4111111111111111').must_equal true
	end

end
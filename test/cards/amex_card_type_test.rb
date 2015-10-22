require "minitest/autorun"
require "./lib/cards/amex_card_type"


describe AmexCardType do

	before do
		@type = AmexCardType.new
	end

	it "should start with 34 and be 15 chars long" do
		@type.match?('341111111111111').must_equal true
	end

	it "should start with 37 and be 15 chars long" do
		@type.match?('371111111111111').must_equal true
	end

end
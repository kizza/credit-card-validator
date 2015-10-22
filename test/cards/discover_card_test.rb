require "minitest/autorun"
require "./lib/cards/discover_card_type"


describe DiscoverCardType do

	before do
		@type = DiscoverCardType.new
	end

	it "should start with 6011 and be 16 chars long" do
		@type.match?('6011111111111111').must_equal true
	end

end
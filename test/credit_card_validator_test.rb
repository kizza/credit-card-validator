require "minitest/autorun"
require "./lib/credit_card_validator"


describe CreditCardValidator do

	before do
		@validator = CreditCardValidator.new
	end

	it "should remove spaces from numbers" do
		@validator.format_card_number('1234 5678').must_equal '12345678'
	end

	it "should remove dashes from numbers" do
		@validator.format_card_number('1234-5678').must_equal '12345678'
	end

	it "should pass the luhn algorithm" do
		@validator.valid?('4111111111111111').must_equal true
		@validator.valid?('4012888888881881').must_equal true
		@validator.valid?('4111111111111').wont_equal true
		@validator.valid?('5105105105105106').wont_equal true
	end

end
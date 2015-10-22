class MastercardCardType

	def name
		'MasterCard'
	end

	def match?(number)
		number.match(/^5[1-5]/) and number.length == 16
	end

end
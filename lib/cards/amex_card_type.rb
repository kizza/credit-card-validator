class AmexCardType

	def name
		'AMEX'
	end

	def match?(number)
		number.match(/^34|37/) and number.length == 15
	end
	
end
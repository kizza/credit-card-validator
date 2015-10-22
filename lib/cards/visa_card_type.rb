class VisaCardType
	
	def name
		'VISA'
	end

	def match?(number)
		number.match(/^4/) && (number.length == 13 or number.length == 16)
	end

end
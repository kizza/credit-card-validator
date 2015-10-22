class DiscoverCardType
	
	def name
		'Discover'
	end

	def match?(number)
		number.match(/^6011/) and number.length == 16
	end

end
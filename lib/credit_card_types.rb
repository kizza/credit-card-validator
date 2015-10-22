require './lib/cards/amex_card_type'
require './lib/cards/discover_card_type'
require './lib/cards/mastercard_card_type'
require './lib/cards/visa_card_type'


class CreditCardTypes

	def initialize
		@card_types = [
			AmexCardType.new,
			DiscoverCardType.new,
			MastercardCardType.new,
			VisaCardType.new
		]
	end

	def get_type(number)
		card_type = 'Unknown'
		@card_types.each { |type| card_type = type.name if type.match?(number) }
		card_type
	end

end
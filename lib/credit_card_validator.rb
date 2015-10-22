require './lib/credit_card_types'


class CreditCardValidator

	def format_card_number(number)
		number.to_s.gsub(/(\s|-)+/, "")
	end

	def valid?(number)
		total_sum = 0
		number = format_card_number(number)
		number.reverse.chars.each_slice(2) do |odd,even|
			total_sum += odd.to_i
			if even
				doubled = even.to_i * 2
				doubled = doubled.to_s.chars.map(&:to_i).reduce(:+) if doubled > 9
				total_sum += doubled
			end
		end
		total_sum % 10 == 0 and total_sum > 0
	end

end
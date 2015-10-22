#!/usr/bin/env ruby

require './lib/credit_card_types'
require './lib/credit_card_validator'


# Get input from passed in file or filename
lines = []
if !$stdin.tty?
	input = $stdin.read
	lines = input.lines
elsif !ARGV.empty?
	filepath = ARGV.first
	if !File.file?(filepath)
		puts "Could not find file %s" % filepath
		exit
	else
		lines = File.readlines(filepath)
	end
end

if lines.empty?
	puts "No numbers"
	exit
end

# Process card numbers
card_types = CreditCardTypes.new
card_validator = CreditCardValidator.new
results = []
lines.each do |line|
	card_number = card_validator.format_card_number(line)
	result = { "number" => card_number,
           "type" => card_types.get_type(card_number),
           "status" => card_validator.valid?(card_number) ? 'valid' : 'invalid'}
   results.push result
end

# Format result padding
padding = 0
results.each do |result|
	length = (result['type'].length + result['number'].length) + 2
	padding = length if length > padding
end

# Output results
results.each do |result|
	card_details = (result['type'] + ': ' + result['number']).ljust(padding)
	puts "%s (%s)" % [card_details, result['status']]
end
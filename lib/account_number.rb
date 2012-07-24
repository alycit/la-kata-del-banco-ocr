##
## This class represents the account number
## It is responsible for parsing and validating the number
##

require 'conversion_constants'

class AccountNumber
  
  include ConversionConstants
  
  attr_accessor :account_number
  
  INITIAL_CHECKSUM_POSITION = 0
  CHECKSUM_DIVISOR = 11
  
  def initialize
    @account_number = ""
  end
  
  def extract_account_number set_of_lines
     set_of_lines.pop
     set_of_lines.collect!{ |line| AccountNumber::break_line_into_pieces_of_digit line }.transpose.join.chars.each_slice(9) do |text_digit_pieces|
        @account_number << CONVERSION_MAP[text_digit_pieces.join]
     end
     @account_number
  end
  
  def valid?
    checksum(INITIAL_CHECKSUM_POSITION, @account_number.size) == 0
  end
  
  private
  
  def self.break_line_into_pieces_of_digit(line)
    broken_line = line.chars.each_slice(3).inject([]) do |builder, three_chars|
      builder << three_chars
    end
  end
  
  def checksum(position, multiplier)
    char_as_digit = @account_number[position].to_i
    return char_as_digit if multiplier == 0
    ((char_as_digit * multiplier) + checksum(position + 1, multiplier - 1)) % CHECKSUM_DIVISOR
  end
end
##
## This class represents the account number
## It is responsible for parsing and validating the number
##

require 'conversion_constants'

class AccountNumber
  
  include ConversionConstants
  
  attr_accessor :account_number
  
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
    checksum == 0
  end
  
  private
  
  def self.break_line_into_pieces_of_digit(line)
    broken_line = line.chars.each_slice(3).inject([]) do |builder, three_chars|
      builder << three_chars
    end
  end
  
  def checksum
    (@account_number[0].to_i * 9 +
    @account_number[1].to_i * 8 +
    @account_number[2].to_i * 7 +
    @account_number[3].to_i * 6 +
    @account_number[4].to_i * 5 +
    @account_number[5].to_i * 4 +
    @account_number[6].to_i * 3 +
    @account_number[7].to_i * 2 + 
    @account_number[8].to_i) % 11
  end
end
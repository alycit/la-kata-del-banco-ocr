require 'conversion_constants'

class AccountNumber
  
  include ConversionConstants
    
  attr_accessor :account_number
  
  def initialize
    @account_number = ""
  end
  
  def extract_account_number set_of_lines
     set_of_lines.pop
     set_of_lines.collect!{ |line| break_line_into_pieces_of_digit line }.transpose.join.chars.each_slice(9) do |text_digit_pieces|
        @account_number << CONVERSION_MAP[text_digit_pieces.join]
     end
     @account_number
  end
  
  def valid?
    true
  end
  
  private
  
  def break_line_into_pieces_of_digit(line)
    broken_line = []
    line.chars.each_slice(3) do |three_chars|
      broken_line << three_chars
    end
    broken_line
  end
end
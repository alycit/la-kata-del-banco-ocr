require 'conversion_constants'

class Ocr

  include ConversionConstants

  def process_file(file_name)
    all_account_numbers = []

    (File.open(file_name).readlines.collect{ |line| line.chomp }).each_slice(4) do |set|
       account_number = []
       set.pop
       (set.collect!{ |line| break_line line }).transpose.join.chars.each_slice(9) do |digit|
         account_number << CONVERSION_MAP[digit.join]
       end
       all_account_numbers << account_number.join
    end

    all_account_numbers
  end

  private
  def break_line(line)
    broken_line = []
    line.chars.each_slice(3) do |three_chars|
      broken_line << three_chars
    end
    broken_line
  end
end

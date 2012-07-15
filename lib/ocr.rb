require 'conversion_constants'

class Ocr
  
  def initialize
    @file_data = []
  end

  def process_file(file_name)
    (File.open(file_name).readlines.collect{ |line| line.chomp }).each_slice(4) do |set|
      set.collect!{ |line| break_line line }
      # take each set and coerce into indiviual text based digits
      # look up in constant hash and get number
      @file_data << set.transpose
    end
    '000000000'
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

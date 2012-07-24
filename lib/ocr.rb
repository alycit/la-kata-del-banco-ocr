##
## This class is essentially the controller of the Ocr application
## It is responsible for taking the file input
##

class Ocr
  
  def initialize
    @all_account_numbers = []
  end

  def process_file(file_name)
    File.open(file_name).readlines.collect{ |line| line.chomp }.each_slice(4) do |four_lines|
       @all_account_numbers << AccountNumber.new.extract_account_number(four_lines)
    end
    @all_account_numbers
  end
end

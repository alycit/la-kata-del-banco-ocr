require 'ocr'
require 'simplecov'

SimpleCov.start

describe Ocr do

  it "reads a file with one entry" do
    subject.process_file('zeroes.txt').should == '000000000'
  end
end


require 'spec_helper'
require 'ocr'

describe Ocr do

  it "reads a file with one entry" do
    subject.process_file('spec/test_data/zeroes.txt').should == '000000000'
  end

  it "reads a file with one entry of ones" do
    subject.process_file('spec/test_data/ones.txt').should == '111111111'
  end

end


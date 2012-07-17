require 'spec_helper'
require 'ocr'

describe Ocr do

  it "reads a file with one entry" do
    subject.process_file('spec/test_data/zeroes.txt').should == '000000000'
  end

  it "reads a file with one entry of ones" do
    subject.process_file('spec/test_data/ones.txt').should == '111111111'
  end

  it "reads a file with one entry of twos" do
    subject.process_file('spec/test_data/twos.txt').should == '222222222'
  end

  it "reads a file with one entry of threes" do
    subject.process_file('spec/test_data/threes.txt').should == '333333333'
  end 

  it "reads a file with one entry of fours" do
    subject.process_file('spec/test_data/fours.txt').should == '444444444'
  end 
end


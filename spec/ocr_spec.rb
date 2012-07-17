require 'spec_helper'
require 'ocr'

describe Ocr do

  it "reads a file with one entry" do
    subject.process_file('spec/test_data/zeroes.txt').should == ['000000000']
  end

  it "reads a file with one entry of ones" do
    subject.process_file('spec/test_data/ones.txt').should == ['111111111']
  end

  it "reads a file with one entry of twos" do
    subject.process_file('spec/test_data/twos.txt').should == ['222222222']
  end

  it "reads a file with one entry of threes" do
    subject.process_file('spec/test_data/threes.txt').should == ['333333333']
  end 

  it "reads a file with one entry of fours" do
    subject.process_file('spec/test_data/fours.txt').should == ['444444444']
  end 

  it "reads a file with one entry of fives" do
    subject.process_file('spec/test_data/fives.txt').should == ['555555555']
  end 

  it "reads a file with one entry of sixes" do
    subject.process_file('spec/test_data/sixes.txt').should == ['666666666']
  end 

  it "reads a file with one entry of sevens" do
    subject.process_file('spec/test_data/sevens.txt').should == ['777777777']
  end 

  it "reads a file with one entry of eights" do
    subject.process_file('spec/test_data/eights.txt').should == ['888888888']
  end 

  it "reads a file with one entry of nines" do
    subject.process_file('spec/test_data/nines.txt').should == ['999999999']
  end 
  
  it "reads a file with multiple entries" do 
    subject.process_file('spec/test_data/multiple.txt').should == ['000000000', 
      								   '111111111', 
      								   '222222222', 
      								   '333333333',
     								   '444444444',
      								   '555555555',
     								   '666666666',
     								   '777777777',
      								   '888888888',
     								   '999999999',
      								   '123456789']
  end
end


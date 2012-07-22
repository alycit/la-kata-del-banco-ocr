require 'spec_helper'
require 'account_number'

describe AccountNumber do

  it "it indicates that all zeroes is valid" do
    subject.account_number = '000000000'
    subject.valid?.should be_true
  end
  
  it "it indicates that '123456789' is valid" do
    subject.account_number = '123456789'
    subject.valid?.should be_true
  end
  
  it "it indicates that '345882865' is valid" do
    subject.account_number = '345882865'
    subject.valid?.should be_true
  end
  
  it "it indicates that '345882814' is valid" do
    subject.account_number = '345882814'
    subject.valid?.should be_true
  end
  
  it "it indicates that '715882864' is valid" do
    subject.account_number = '715882864'
    subject.valid?.should be_true
  end
  
  it "it indicates that '745882865' is invalid" do
    subject.account_number = '745882865'
    subject.valid?.should be_false
  end
  
  it "it indicates that '745882869' is invalid" do
    subject.account_number = '745882869'
    subject.valid?.should be_false
  end
  
  it "it indicates that '745882868' is invalid" do
    subject.account_number = '745882868'
    subject.valid?.should be_false
  end
  
  it "it indicates that '123456788' is invalid" do
    subject.account_number = '123456788'
    subject.valid?.should be_false
  end
  
  it "it indicates that '133456788' is invalid" do
    subject.account_number = '133456788'
    subject.valid?.should be_false
  end
  
  it "it indicates that '133456780' is invalid" do
    subject.account_number = '133456780'
    subject.valid?.should be_false
  end
  
  it "it indicates that a number is invalid when there are non numerics" do
    subject.account_number = '664e71495'
    subject.valid?.should be_false
  end
end
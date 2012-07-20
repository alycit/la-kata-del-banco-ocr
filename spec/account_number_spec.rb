require 'spec_helper'
require 'account_number'

describe AccountNumber do
  
  it "it indicates that a number is valid" do
    subject.account_number = '000000000'
    subject.valid?.should be_true
  end
end
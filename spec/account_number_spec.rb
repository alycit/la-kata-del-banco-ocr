require 'spec_helper'
require 'account_number'

describe AccountNumber do
  
  it "has a 9 digit value" do
    subject.account_number = '000000000'
  end
end
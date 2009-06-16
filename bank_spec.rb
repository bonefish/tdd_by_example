require 'money'
require 'bank'
require 'sum'
  
describe Bank do

  it "reducing a sum of the same currency gives a money on that currency" do
    sum =  Sum.new(Money.dollar(3),Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")
    result.should eql(Money.dollar(7))
  end

  it "should be able to reduce a single Money argument rather than a sum" do
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), "USD")
    result.should eql(Money.dollar(1))
  end
end

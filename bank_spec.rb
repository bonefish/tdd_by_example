require 'money'
require 'bank'
require 'sum'
  
describe Bank do
  
  before(:each) do
    @bank = Bank.new
  end

  it "reducing a sum of the same currency gives a money on that currency" do
    sum =  Sum.new(Money.dollar(3),Money.dollar(4))
    result = @bank.reduce(sum, "USD")
    result.should eql(Money.dollar(7))
  end

  it "should be able to reduce a single Money argument rather than a sum" do
    result = @bank.reduce(Money.dollar(1), "USD")
    result.should eql(Money.dollar(1))
  end
  
  it "should reduce money of different currencies" do
    @bank.add_rate("CHF", "USD", 2)
    result = @bank.reduce(Money.franc(2), "USD")
    result.should eql(Money.dollar(1))
  end
end

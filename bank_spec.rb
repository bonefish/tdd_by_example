require 'money'
require 'bank'
require 'sum'
  
describe Bank do
  
  before(:each) do
    @bank = Bank.new
  end

  it "reducing a sum of the same currency gives a money in that currency" do
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
  
  it "should reduce a sum of different currencies" do
    fivebucks = Money.dollar(5)
    tenfrancs = Money.franc(10)
    @bank.add_rate("CHF", "USD", 2)
    result = @bank.reduce(fivebucks+tenfrancs,"USD")
    result.should == Money.dollar(10)
  end
  
  it "should have any identity rate of 1" do
    @bank.rate("USD","USD").should == 1
  end
  
  it "should store rates given to it" do
    @bank.add_rate("CHF", "USD", 2)
    @bank.rate("CHF", "USD").should == 2
  end

end

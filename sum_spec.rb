require 'money'
require 'bank'
require 'sum'
  
describe Sum do
  
  before(:each) do
    @bank = Bank.new
  end
  
  it "should reduce the sum of a sum and a money" do
    fivebucks = Money.dollar(5)
    tenfrancs = Money.franc(10)
    @bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(fivebucks, tenfrancs) + fivebucks
    result = @bank.reduce(sum,"USD")
    result.should eql(Money.dollar(15))
  end
end

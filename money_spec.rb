require 'money'
require 'bank'
require 'sum'
  
describe Money do
  it "should handle multiplication" do
    five = Money.dollar(5)
    five.times(2).should eql(Money.dollar(10))
    five.times(3).should eql(Money.dollar(15))
  end

  it "should handle equality" do
    Money.dollar(5).should eql(Money.dollar(5))
  end

  it "should handle inequality" do
    Money.dollar(5).should_not eql(Money.dollar(6))
  end

  it "should handle equality across different currencies" do
    Money.dollar(5).should_not eql(Money.franc(5))
  end

  it "should have the right currency for franc" do
    Money.franc(1).currency.should == "CHF"
  end
  
  it "should have the right amount for franc" do
    Money.franc(1).amount.should == 1
  end
  
  it "should have the right currency for dollar" do
    Money.dollar(1).currency.should == "USD"
  end
  
  it "should have the right amount for dollar" do
    Money.dollar(1).amount.should == 1
  end
  
  it "should handle same currency addition" do
    five = Money.dollar(5)
    sum =  five + five
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    Money.dollar(10).should eql(reduced)
  end

  it "adding two monies should return a sum" do
    five = Money.dollar(5)
    sum =  five + five
    sum.augend.should eql(five)
    sum.addend.should eql(five)
  end

end

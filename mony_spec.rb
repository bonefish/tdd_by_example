require 'money'
  
describe Money do
  it "should handle multiplication" do
    five = Money.dollar(5)
    five.times(2).should eql(Money.dollar(10))
    five.times(3).should eql(Money.dollar(15))
  end

  it "should handle equality when using new" do
    Money.new(10,"CHF").should eql(Franc.new(10,"CHF"))
  end
  
  it "should handle equality for dollar" do
    Money.dollar(5).should eql(Money.dollar(5))
  end

  it "should handle inequality for dollar" do
    Money.dollar(5).should_not eql(Money.dollar(6))
  end

  it "should handle equality for franc" do
    Money.franc(5).should eql(Money.franc(5))
  end

  it "should handle inequality for franc" do
    Money.franc(5).should_not eql(Money.franc(6))
  end

  it "should handle equality across different currencies" do
    Money.dollar(5).should_not eql(Money.franc(5))
  end

  it "should have the right currency for franc" do
    Money.franc(1).currency.should == "CHF"
  end
  
  it "should have the right currency for dollar" do
    Money.dollar(1).currency.should == "USD"
  end
  
end

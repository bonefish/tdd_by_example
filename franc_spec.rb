require 'franc'
  
describe Franc do
  it "should handle multiplication" do
    five = Money.franc(5)
    five.times(2).should eql(Money.franc(10))
    five.times(3).should eql(Money.franc(15))
  end

  it "should handle equality" do
    Money.franc(5).should eql(Money.franc(5))
  end

  it "should handle inequality" do
    Money.franc(5).should_not eql(Money.franc(6))
  end
end

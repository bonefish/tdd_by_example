require 'dollar'
  
describe Dollar do
  it "should handle multiplication" do
    five = Money.dollar(5)
    five.times(2).should eql(Dollar.new(10))
    five.times(3).should eql(Dollar.new(15))
  end

  it "should handle equality" do
    Dollar.new(5).should eql(Dollar.new(5))
  end

  it "should handle inequality" do
    Dollar.new(5).should_not eql(Dollar.new(6))
  end

  it "should handle equality across different currencies" do
    Dollar.new(5).should_not eql(Franc.new(5))
  end
end

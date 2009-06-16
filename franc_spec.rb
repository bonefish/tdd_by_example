require 'franc'
  
describe Franc do
  it "should handle multiplication" do
    five = Franc.new(5)
    five.times(2).should eql(Franc.new(10))
    five.times(3).should eql(Franc.new(15))
  end

  it "should handle equality" do
    Franc.new(5).should eql(Franc.new(5))
  end

  it "should handle inequality" do
    Franc.new(5).should_not eql(Franc.new(6))
  end
end

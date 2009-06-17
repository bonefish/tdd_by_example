# p. 196 of TDD by example
require 'triangle'
  
describe Triangle do
  
  before(:each) do
  end
  
  it "type should return 1 for an equialateral triangle" do
    @t = Triangle.new(1,1,1)
    @t.type.should == 1
  end

  it "type should return 2 for an isosceles triangle" do
    @t = Triangle.new(1,1,2)
    @t.type.should == 2
  end

  it "type should return 3 for a scalar triangle" do
    @t = Triangle.new(1,2,3)
    @t.type.should == 3
  end
  
  it "should raise an error if malformed with a zero side" do
    @t = Triangle.new(0,2,3)
    begin
      @t.type
      true.should == false
    rescue RuntimeError
    end
  end

  it "should raise an error if malformed with a nil parameter" do
    @t = Triangle.new(1,2,nil)
    begin
      @t.type
      true.should == false
    rescue RuntimeError
    end
  end

  it "should raise an error if malformed with a negative number side" do
    @t = Triangle.new(1,2,-3)
    begin
      @t.type
      true.should == false
    rescue RuntimeError
    end
  end
  
  it "should raise an error if malformed with non-numeric side" do
    @t = Triangle.new(1,'a',3)
    begin
      @t.type
      true.should == false
    rescue RuntimeError
    end
  end
  
end

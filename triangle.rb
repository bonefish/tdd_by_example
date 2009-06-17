# p. 196 of TDD by example
class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def type
    raise if malformed
    return 1 if equilateral
    return 2 if isosceles
    3
  end
  
  def malformed
    [side1, side2, side3].each do |side|
      side = side.to_i
      return true if side <= 0 
    end
    false
  end
  
  def equilateral
     side1 == side2 && side1 == side3
  end
 
  def isosceles
    side1 == side2 || side1 == side3 || side2 == side3
  end
 
end

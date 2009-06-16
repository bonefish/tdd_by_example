class Pair

  attr_reader :from, :to
  
  def initialize(from, to)
    @from = from
    @to = to
  end
  
  def eql? (pair)
    from.eql?(pair.from) && to.eql?(pair.to)
  end
  
  def hashcode
    0
  end
end

class Bank
    
  attr_accessor :rates
  
  def initialize
    @rates = Hash.new
  end  
  
  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate)
    rates[[from,to]] = rate
  end
   
  def rate(from, to)
    return 1 if from.eql?(to)
    rates[[from,to]]
  end

end

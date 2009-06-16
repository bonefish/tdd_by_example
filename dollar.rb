require 'money'

class Dollar < Money
  
  def initialize(amount, currency)
    @amount = amount
    @currency = "USD"
  end
  
  def times(multiplier)
    Dollar.new(@amount * multiplier, nil)
  end
  
end

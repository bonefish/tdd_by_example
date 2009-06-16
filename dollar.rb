require 'money'

class Dollar < Money
  
  def initialize(amount, currency)
    @amount = amount
    @currency = "USD"
  end
  
  def times(multiplier)
    Money.dollar(@amount * multiplier)
  end
  
end

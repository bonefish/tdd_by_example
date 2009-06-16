class Money

  attr_reader :amount
  attr_reader :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end
  
  def eql?(money)
    amount == money.amount && currency == money.currency
  end
  
  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
    Money.new(amount, "CHF")
  end

  def + (addend)
    Sum.new(self, addend)
  end
  
  def reduce(bank, to)
    rate = (currency == "CHF" && to == "USD") ? 2 : 1
    Money.new(amount/rate, to)
  end

end

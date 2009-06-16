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

  def + (money)
    Money.new(amount + money.amount, currency)
  end
end

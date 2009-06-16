class Money

  attr_reader :amount
  attr_reader :currency

  def eql?(money)
    @amount == money.amount && self.class == money.class
  end
  
  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

end

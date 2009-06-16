class Money

  attr_reader :amount
  attr_reader :currency

  def eql?(money)
    @amount == money.amount && self.class == money.class
  end
  
  def self.dollar(amount)
    Dollar.new(amount, nil)
  end

  def self.franc(amount)
    Franc.new(amount, nil)
  end

end

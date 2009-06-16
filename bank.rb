class Bank
  
  def reduce(source, currency)
    if source.class == Money
      return source.reduce(currency)
    end
    source.reduce(currency)
  end
    
end

class Bank
  
  def reduce(source, currency)
    if source.class == Money
      return source
    end
    source.reduce(currency)
  end
    
end

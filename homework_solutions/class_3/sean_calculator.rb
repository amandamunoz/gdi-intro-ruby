class Calculator
  def add(lhs,rhs)
    lhs + rhs
  end

  def subtract(lhs,rhs)
    lhs - rhs
  end

  def divide(lhs,rhs)
    lhs / rhs
  end

  def multiply(lhs,rhs)
    lhs * rhs
  end

  def pow(num,exponent)
    num ** exponent
  end
end

c = Calculator.new
puts c.add(5,10)
puts c.subtract(5,10)
puts c.divide(5,10)
puts c.multiply(5,10)
puts c.pow(5,10)

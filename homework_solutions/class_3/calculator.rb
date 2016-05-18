# Amanda's calculator
# Additional questions: how can we make this program more robust?
# What checks can we add?
# How can we DRY this?

class Calculator
  def self.add(input_1, input_2, *additional_inputs)
    answer = input_1 + input_2

    additional_inputs.each do |input|
      answer += input
    end
    answer
  end

  def self.subtract(input_1, input_2, *additional_inputs)
    answer = input_1 - input_2

    additional_inputs.each do |input|
      answer -= input
    end
    answer
  end

  def self.multiply(input_1, input_2, *additional_inputs)
    answer = input_1 * input_2

    additional_inputs.each do |input|
      answer *= input
    end
    answer
  end

  def self.divide(input_1, input_2, *additional_inputs)
    answer = input_1 / input_2

    additional_inputs.each do |input|
      answer /= input
    end
    answer
  end
end

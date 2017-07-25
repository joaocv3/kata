class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def calc
    return 0 if @numbers == ""
    return @numbers.to_i unless @numbers.include? ","

    numbers = to_array(@numbers)

    total = 0
    numbers.each do |number|
      total += number.to_i
    end
    total
  end

  def to_array(numbers)
    numbers.split(/[^0-9]/)
  end
end

#StringCalculator.new("32,23,123,132\n312").calc

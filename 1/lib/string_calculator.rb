class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def calc
    return 0 if @numbers == ""
    return @numbers.to_i unless @numbers.include? ","


    numbers = @numbers.split(",")
    numbers.first.to_i + numbers.last.to_i 
  end
end

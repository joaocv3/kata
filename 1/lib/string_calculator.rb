class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def calc
    return 0 if @numbers == ""
    return @numbers.to_i unless @numbers.include? ","

    total = 0
    @numbers.split(",").each do |number|
      total += number.to_i
    end
    total
  end
end

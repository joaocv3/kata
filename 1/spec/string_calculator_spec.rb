require_relative "../lib/string_calculator.rb"

RSpec.describe StringCalculator do
  context "with an empty string" do
    result = StringCalculator.new("").calc

    it "returns zero" do
      expect(result).to eq 0
    end
  end

  context "with one number" do
    result = StringCalculator.new("1").calc

    it "returns the number itself" do
      expect(result).to eq 1
    end
  end

  context "with 2 numbers" do
    result = StringCalculator.new("3, 4").calc

    it "returns the sum result" do
      expect(result).to eq  7
    end
  end
end

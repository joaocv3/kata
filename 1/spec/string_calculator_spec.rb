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

  context "with more than 2 numbers" do
    result = StringCalculator.new("3, 4, 23, 4").calc

    it "returns the sum result" do
      expect(result).to eq  34
    end
  end

  context "with more than 2 numbers" do
    context "with only commas to separate numbers" do
      result = StringCalculator.new("3, 4, 23, 4").calc

      it "returns the sum result" do
        expect(result).to eq  34
      end
    end

    context "with commas and/or new lines to separate numbers" do
      result = StringCalculator.new("7, 4\n 23\n 1").calc

      it "returns the sum result" do
        expect(result).to eq  35
      end
    end
  end
end

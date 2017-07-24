require_relative "../lib/string_calculator.rb"

RSpec.describe StringCalculator do
  context "with an empty string" do
    result = StringCalculator.new("").calc

    it "returns zero" do
      expect(result).to eq 0
    end
  end
end

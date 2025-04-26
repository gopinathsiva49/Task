require './string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("1")).to eq(1)
  end

  it "returns sum of two numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2")).to eq(3)
  end
  
end

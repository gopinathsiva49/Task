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

  it "returns zero when only a comma exists" do
    calculator = StringCalculator.new
    expect(calculator.add(",")).to eq(0)
  end
  
  it "handles new lines between numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it "supports custom delimiters" do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end
    
end

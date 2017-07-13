require "calc"

# https://relishapp.com/rspec/

describe Calc do

  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(Calc.add('')).to eql(0)
      end
    end

    context "given two numbers, 3 & 5" do
      it "returns 8" do
        expect(Calc.add(3, 5)).to eql(8)
      end
    end
  end
end

require "spec_helper"

describe Haskii::MimiMatrix do

  describe ".rotate" do
    let(:matrica)  { [
      [1, 2, 0],
      [1, 0, 0],
      [1, 0, 3]
    ] }
    let(:good_one) { [
      [0, 0, 3],
      [2, 0, 0],
      [1, 1, 1]
    ] }

    it "should return a rotated matrix" do
      expect(described_class.rotate(matrica)).to match_array(good_one)
    end
  end

  describe "#generate_matrix" do
    let(:numbers) { [2, 4, 6] }

    let(:good_one) { [
      ["*", "*", " ", " ", " ", " "],
      ["*", "*", "*", "*", " ", " "],
      ["*", "*", "*", "*", "*", "*"]
    ] }

    it "returns an array" do
      expect(described_class.new(numbers).generate_matrix).to match_array(good_one)
    end
  end

end

require "spec_helper"

describe Haskii::MimiMatrix do

  describe "#generate_matrix" do
    let(:numbers) { [1, 3, 1] }

    let(:good_one) { [
      [" ", "*", " "],
      [" ", "*", " "],
      ["*", "*", "*"]
    ] }

    let(:emoji) { "*" }

    it "returns an array" do
      expect(described_class.new(numbers, emoji).create).to match_array(good_one)
    end
  end

end

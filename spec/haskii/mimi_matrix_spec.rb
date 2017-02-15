require "spec_helper"

describe Haskii::MimiMatrix do

  describe "#generate_matrix" do
    let(:numbers) { [1, 3, 1] }

    let(:good_one) { [
      [" ", "*", " "],
      [" ", "*", " "],
      ["*", "*", "*"]
    ] }

    it "returns an array" do
      expect(described_class.new(numbers).create).to match_array(good_one)
    end
  end

end

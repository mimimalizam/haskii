require "spec_helper"

describe Haskii::Interpolation do

  describe "#average" do
    let(:numbers) { [1, 8, 1, 4, 5, 20] }
    let(:good_one) { [5, 5, 3, 5, 13] }

    it "returns an array of averages" do
      expect(described_class.new(numbers).average).to match_array(good_one)
    end
  end
end

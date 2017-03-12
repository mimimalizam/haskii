require "spec_helper"

describe Haskii::BarChart do
  let(:numbers) { [1,2,3] }
  let(:emoji) { "*" }

  describe "#render" do
    before do
      @emoji_double = [ " ", " ", "*",
                        " ", "*", "*",
                        "*", "*", "*" ]
      @matrix_double = double(Haskii::MimiMatrix.new(numbers,emoji))
      allow(Haskii::MimiMatrix).to receive(:new).with(numbers,emoji).and_return(@matrix_double)
      allow(@matrix_double).to receive(:create).and_return(@emoji_double)
    end

    it "raises a NotImplementedError" do
      expect { described_class.new(numbers,emoji).render }.to raise_error(NotImplementedError)
    end
  end
end

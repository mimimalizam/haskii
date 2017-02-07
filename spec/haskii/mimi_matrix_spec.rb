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

    it "should return a rotated matrix"
    #do
    #  expect(Haskii::Matrix.rotate(matrica)).to eql(good_one)
    #end
  end

  it "should return an array or arrays"

end

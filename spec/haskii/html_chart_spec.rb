require "spec_helper"

describe Haskii::HtmlChart do

  describe "#table" do
    let(:matrix) { [[" ", " ", "*"],
                    [" ", " ", "*"],
                    [" ", "*", "*"],
                    ["*", "*", "*"]] }

    let(:html_string) { "<table><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td>*</td><td>*</td></tr><tr><td>*</td><td>*</td><td>*</td></tr></table>" }
    it "returns appropriate html table" do
      expect(described_class.new(matrix).table).to eql(html_string)
    end
  end
end

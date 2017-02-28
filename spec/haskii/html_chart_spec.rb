require "spec_helper"

describe Haskii::HtmlChart do

  let(:matrix) { [[" ", " ", "*"],
                  [" ", " ", "*"],
                  [" ", "*", "*"],
                  ["*", "*", "*"]] }

    let(:html_string) { "<table><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td>*</td><td>*</td></tr><tr><td>*</td><td>*</td><td>*</td></tr></table>" }

  describe "#create" do
    before do
      @html_double = double(File.new("chart.html", "w+"))
      allow(File).to receive(:new).with("chart.html", "w+").and_return(@html_double)
    end

    it "tries to create html file" do
      expect(File).to receive(:new).with("chart.html", "w+")
      expect(@html_double).to receive(:puts).with(html_string)
      expect(@html_double).to receive(:close)

      described_class.new(matrix).create
    end
  end

  describe "#table" do
    it "returns appropriate html table" do
      expect(described_class.new(matrix).table).to eql(html_string)
    end
  end

end

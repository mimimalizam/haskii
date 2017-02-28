require "spec_helper"

describe Haskii::HtmlChart do

  describe "#create" do
    let(:matrix) { [[" ", " ", "*"],
                    [" ", " ", "*"],
                    [" ", "*", "*"],
                    ["*", "*", "*"]] }

    let(:html_string) { "<table><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td>*</td><td>*</td></tr><tr><td>*</td><td>*</td><td>*</td></tr></table>" }

    let(:output_file) { "chart.html" }
    before do
      @html_double = double(File.new(output_file, "w+"))
      allow(File).to receive(:new).with(output_file, "w+").and_return(@html_double)
    end

    it "tries to create html file" do
      expect(File).to receive(:new).with(output_file, "w+")
      expect(@html_double).to receive(:puts).with(html_string)
      expect(@html_double).to receive(:close)

      described_class.new(matrix).create(output_file)
    end
  end

end

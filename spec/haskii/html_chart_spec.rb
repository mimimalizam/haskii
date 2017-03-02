require "spec_helper"

describe Haskii::HtmlChart do
  let(:emoji) { "*" }
  let(:frequences) { [1, 2, 4] }

  let(:html_string) { "<table><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td> </td><td>*</td></tr><tr><td> </td><td>*</td><td>*</td></tr><tr><td>*</td><td>*</td><td>*</td></tr></table>" }

  describe "#render" do
    it "returns appropriate html string" do
      expect(described_class.new(frequences, emoji).render).to eql(html_string)
    end
  end
end

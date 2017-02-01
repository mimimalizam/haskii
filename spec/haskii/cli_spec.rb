require "spec_helper"

describe Haskii::CLI do

  it "prints a chart" do
    expect { subject.bar("2", "1") }.to output(/^Your happy bar chart:\n((\*)*\n)*$/).to_stdout
  end

  context "called with wrong arguments" do
    let(:message) { /^Nothing to see here, please spare some numbers without letters. Tnx$/ }

    it "asks for numbers when called without arguments" do
      expect { subject.bar() }.to output(message).to_stdout
    end

    it "asks for numbers when called with letters" do
      expect { subject.bar("aab", "1") }.to output(message).to_stdout
    end
  end

  it "has a version" do
    expect { subject.version }.to output(/^Haskii version #{Haskii::VERSION}$/).to_stdout
  end

end

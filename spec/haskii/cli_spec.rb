require "spec_helper"

describe Haskii::CLI do

  it "prints a chart" do
    expect { subject.bar("2", "1") }.to output(/^Your happy bar chart:$/).to_stdout
  end

  it "asks for number when called without arguments" do
    expect { subject.bar() }.to output(/^Nothing to see here, please spare some numbers. Tnx$/).to_stdout
  end

  it "has a version" do
    expect { subject.version }.to output(/^Haskii version #{Haskii::VERSION}$/).to_stdout
  end
end

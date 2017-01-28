require "spec_helper"

describe Haskii::CLI do

  it "has a version" do
    expect { subject.version }.to output(/^Haskii version #{Haskii::VERSION}$/).to_stdout
  end

end

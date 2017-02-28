require "require_all"

require_all "lib"

RSpec.configure do |config|
  config.after(:suite) do
    File.delete("chart.html")
  end
end

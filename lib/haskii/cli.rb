require "thor"

module Haskii

  class CLI < Thor

    desc "version", "Prints the haskii version info"
    def version
      puts "Haskii version #{Haskii::VERSION}"
    end
    map %w(-v --version) => :version

  end

end

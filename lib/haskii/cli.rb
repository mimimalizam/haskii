require "thor"

module Haskii

  class CLI < Thor

    desc "bar", "will print out an ascii bar of your choosing"
    def bar(*frequences)
      frequences.map! { |i| i.to_i }
      if frequences.empty?
        puts "Nothing to see here, please spare some numbers. Tnx"
      else
        result = Haskii::BarChart.new(frequences).rotate
        puts "Your happy bar chart:\n\n"
        puts result
      end
    end

    desc "version", "Prints the haskii version info"
    def version
      puts "Haskii version #{Haskii::VERSION}"
    end
    map %w(-v --version) => :version

  end

end

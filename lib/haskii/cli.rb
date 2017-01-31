require "thor"

module Haskii

  class CLI < Thor

    desc "bar", "will print out an ascii bar of your choosing"
    def bar(*frequences)
      frequences.map! { |i| i.to_i }
      Haskii::BarChart.new(frequences).draw_chart_if_needed
    end

    desc "version", "Prints the haskii version info"
    def version
      puts "Haskii version #{Haskii::VERSION}"
    end
    map %w(-v --version) => :version

  end

end

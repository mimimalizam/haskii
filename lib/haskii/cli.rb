require "thor"

module Haskii

  class CLI < Thor

    desc "bar", "will print out an ascii bar of your choosing"
    def bar(*frequences)
      @frequences = frequences

      if it_can_be_charted?
        result = Haskii::BarChart.new(@frequences).render
        puts "Your happy bar chart:\n\n"
        puts result
      else
        puts "Nothing to see here, please spare some numbers without letters. Tnx"
      end
    end

    desc "version", "Prints the haskii version info"
    def version
      puts "Haskii version #{Haskii::VERSION}"
    end
    map %w(-v --version) => :version

    private

    def convert_to_integer
       @frequences.map! { |i| i.to_i }
    end

    def it_can_be_charted?
      ( not @frequences.empty? ) && (convert_to_integer.min > 0)
    end
  end

end

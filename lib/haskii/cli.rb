require "thor"

module Haskii

  class CLI < Thor

    desc "bar", "will print out an ascii bar of your choosing"
    long_desc <<-LONGDESC
      Prints a simple bar chart for given number sequence.

      With --emoji option, haskii bar will print deluxe bar chart edition
      🌈 🌈 🌈 🌈 🎉 🎉 🎉 🍀 🍀 🍀  when an emoji is suggested.
      Sorry, I understand how 💀 💀 💀 💀  boring searching for emojis can be

       > $ haskii bar --emoji 🍒  5 3 1
       \x5> Your happy bar chart:
       \x5>
       \x5>🍒
       \x5>🍒
       \x5>🍒🍒
       \x5>🍒🍒
       \x5>🍒🍒🍒

       If you specify --output option, haskii bar will save surprise chart in
       a html file

       > $ haskii bar --emoji 🍒 --output chart.html 2 4 6 8 6 4 2 1 6 5 4 3 2 1
       \x5> Your happy bar chart is in "chart.html".
       \x5> Terminal still rules :P #igor
    LONGDESC

    option :output
    option :emoji, :default => "*"
    def bar(*frequences)
      @frequences = frequences
      @output_file = options[:output]
      @emoji = options[:emoji]

      if it_can_be_charted?
        @output_file ? create_html : render_chart
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

    def create_html
      Haskii::BarChart.new(@frequences, @emoji)
                      .create_html(@output_file)
      puts "Your happy bar chart is in \"#{@output_file}\"\nTerminal still rules :P #igor"
    end

    def render_chart
      result = Haskii::BarChart.new(@frequences, @emoji).render
      puts "Your happy bar chart:\n\n"
      puts result
    end

  end
end

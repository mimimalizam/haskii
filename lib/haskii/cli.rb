require "thor"

module Haskii

  class CLI < Thor
    attr_reader :emoji, :frequences, :output_file

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

      it_can_be_charted ? create_output : ask_for_numbers
    end

    desc "version", "Prints the haskii version info"
    def version
      puts "Haskii version #{Haskii::VERSION}"
    end
    map %w(-v --version) => :version

    private

    def it_can_be_charted
      ( not frequences.empty? ) && (convert_to_integer.min > 0)
    end

    def create_output
      output_file ? render_html_chart : render_terminal_chart
    end

    def ask_for_numbers
      puts "Nothing to see here, please spare some numbers without letters. Tnx"
    end

    def render_html_chart
      result = Haskii::HtmlChart.new(frequences, emoji).render
      create_html(result)
    end

    def render_terminal_chart
      result = Haskii::TerminalChart.new(frequences, emoji).render
      puts "Your happy bar chart:\n\n"
      puts result
    end

    def convert_to_integer
      frequences.map! { |i| i.to_i }
    end

    def create_html(result)
      html_file = File.new(output_file, "w+")
      html_file.puts result
      html_file.close
      puts "Your happy bar chart is in \"#{output_file}\"\nTerminal still rules :P #igor"
    end

  end
end

module Haskii
  class BarChart
    attr_accessor :length, :mode, :lines

    def initialize(frequences)
      @frequences = frequences
      @length = @frequences.length
      @mode = @frequences.max

      @lines = []
    end

    def draw_chart_if_needed
      @frequences.empty? ? input_is_empty : rotate
    end

    def rotate
      generate_lines
      @novi = []

      for x in (0..mode - 1 ) do
        new_line = ""
        for j in (0..length - 1) do
          new_line = new_line + lines[j][x]
        end
        @novi << new_line
      end

      puts "Your happy bar chart:"
      puts @novi.reverse
    end

    def input_is_empty
      puts "Nothing to see here, please spare some numbers. Tnx"
    end

    def generate_lines
      @frequences.each do |number|
        @lines << "*" * number + " " * @mode
      end
    end

  end
end

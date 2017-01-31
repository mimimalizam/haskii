require "matrix"

module Haskii
  class BarChart
    attr_accessor :length, :mode

    def initialize(frequences)
      @frequences = frequences
      @length = @frequences.length
      @mode = @frequences.max
    end

    def draw_chart_if_needed
      @frequences.empty? ? input_is_empty : rotate
    end

    def rotate
      matrix = generate_matrix.column_vectors
      .reverse
      .map { |vector| vector.to_a }
      .map { |line| line.join("") }

      puts "Your happy bar chart:"
      puts matrix
    end

    def input_is_empty
      puts "Nothing to see here, please spare some numbers. Tnx"
    end

    def generate_matrix
      row_sequence = @frequences.map { |number| generate_row(number) }
      Matrix[*row_sequence]
    end

    def generate_row(number)
      Array.new(number,"*") + Array.new(@mode - number, " ")
    end

  end
end

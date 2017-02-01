require "matrix"

module Haskii
  class BarChart

    def initialize(frequences)
      @frequences = frequences

      @mode = @frequences.max
    end

    def rotate
      matrix = generate_matrix.column_vectors
      .reverse
      .map { |vector| vector.to_a }
      .map { |line| line.join("") }
    end

    private

    def generate_matrix
      row_sequence = @frequences.map { |number| generate_row(number) }
      Matrix[*row_sequence]
    end

    def generate_row(number)
      Array.new(number,"*") + Array.new(@mode - number, " ")
    end

  end
end

require "matrix"

module Haskii
  class BarChart

    def initialize(frequences)
      @frequences = frequences
      @max = @frequences.max

      @matrix = generate_matrix
    end

    def render
      @matrix.map { |line| line.join("") }
    end

    private

    def generate_matrix
      rows = @frequences.map { |number| generate_row(number) }

      Matrix[*rows].column_vectors
        .reverse
        .map { |vector| vector.to_a }
    end

    def generate_row(number)
      Array.new(number,"*") + Array.new(@max - number, " ")
    end

  end
end

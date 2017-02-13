module Haskii
  class MimiMatrix

    def self.rotate(matrix)
      matrix.transpose
            .reverse
    end

    def initialize(numbers)
      @numbers = numbers

      @max = numbers.max
      generate_matrix
    end

    def generate_matrix
      @generate_matrix ||= @numbers.map { |number| generate_row(number) }
    end

    private

    def generate_row(number)
      Array.new(number,"*") + Array.new(@max - number, " ")
    end

  end
end

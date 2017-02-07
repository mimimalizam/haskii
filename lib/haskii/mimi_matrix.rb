module Haskii
  class MimiMatrix

    def self.rotate(matrix)

      rotated = []


    end

    def self.column_number(matrix)
      matrix.length
    end

    def self.row_number(matrix)
      matrix.first.length
    end

    def initialize(numbers)
      @numbers = numbers

      @mode = numbers.max
    end

  end
end

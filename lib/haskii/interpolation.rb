module Haskii
  class Interpolation

    def initialize(numbers)
      @numbers = numbers

      @average_length = numbers.length - 1
    end

    def average
      tmp = @numbers.rotate

      [@numbers, tmp].transpose
      .map { |a| a.inject(:+) / 2 }
      .first @average_length
    end
  end
end

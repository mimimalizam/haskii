module Haskii
  class Interpolation

    def initialize(numbers)
      @numbers = numbers
    end

    def average
      @numbers.middle
    end

  end
end

class Array
  def middle
    tmp = self.rotate

    [self, tmp].transpose
    .map { |a| a.inject(:+) / 2 }
    .take(self.length - 1)
  end
end

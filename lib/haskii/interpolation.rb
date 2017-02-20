module Haskii
  class Interpolation

    def initialize(numbers)
      @numbers = numbers
      @length = numbers.length

      average
    end

    def average
      tmp = @numbers.rotate

      [@numbers, tmp].transpose
      .map{|a| a.inject(:+) / 2.0}
      .map { |x| x.round }.first @length - 1
    end
  end
end

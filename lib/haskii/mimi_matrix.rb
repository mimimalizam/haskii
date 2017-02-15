module Haskii
  class MimiMatrix

    def initialize(numbers)
      @numbers = numbers

      @max = numbers.max
    end

    def create
      rows.map { |number| generate_row(number) }
    end

    private

    def generate_row(number)
      @numbers.map { |x| x >= number ? "*" : " " }
    end

    def rows
      Array(1..@max).reverse
    end

  end
end

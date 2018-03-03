module Haskii
  class MimiMatrix
    def initialize(numbers, emoji)
      @emoji = emoji
      @numbers = numbers

      @max = numbers.max
    end

    def create
      rows.map { |number| generate_row(number) }
    end

    private

    def generate_row(number)
      @numbers.map { |x| x >= number ? @emoji : " " }
    end

    def rows
      Array(1..@max).reverse
    end

  end
end

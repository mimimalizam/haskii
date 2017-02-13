require "matrix"

module Haskii
  class BarChart

    def initialize(frequences)
      @matrix = Haskii::MimiMatrix.new(frequences)
                                  .generate_matrix
    end

    def render
      generate_matrix.map { |line| line.join("") }
    end

    private

    def generate_matrix
      Haskii::MimiMatrix.rotate(@matrix)
    end

  end
end

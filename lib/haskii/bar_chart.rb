require "matrix"

module Haskii
  class BarChart

    def initialize(frequences)
      @matrix = Haskii::MimiMatrix.new(frequences).create
    end

    def render
      @matrix.map { |line| line.join("") }
    end

  end
end

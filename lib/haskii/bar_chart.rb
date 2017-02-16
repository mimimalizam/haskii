require "matrix"

module Haskii
  class BarChart

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(frequences, emoji).create
    end

    def render
      @matrix.map { |line| line.join("") }
    end

  end
end

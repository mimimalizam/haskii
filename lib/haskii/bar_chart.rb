module Haskii
  class BarChart
    attr_reader :matrix

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(frequences, emoji).create
    end

    def render
      raise NotImplementedError, "render method is not implemented"
    end

  end
end

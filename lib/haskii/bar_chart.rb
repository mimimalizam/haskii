module Haskii
  class BarChart

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(frequences, emoji).create
    end

    def render
      raise NotImplementedError, "render method is not implemented"
    end

  end
end

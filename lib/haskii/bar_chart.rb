module Haskii
  class BarChart

    CANVAS_LIMIT = 21

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(fit_or_not(frequences), emoji).create
    end

    def render
      raise NotImplementedError, "render method is not implemented"
    end

    private

    def fit_or_not(sequence)
      return sequence if sequence.length < CANVAS_LIMIT

      fit_or_not(Haskii::Interpolation.new(sequence).average)
    end

  end
end

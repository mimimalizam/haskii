module Haskii
  class BarChart

    def initialize(frequences)
      @frequences = frequences
    end

    def render
      create_matrix.map { |line| line.join("") }
    end

    private

    def create_matrix
      Haskii::MimiMatrix.new(@frequences)
      .create
    end

  end
end

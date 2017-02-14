module Haskii
  class BarChart

    def initialize(frequences)
      @frequences = frequences

      @matrix = create_matrix
    end

    def render
      rotate_matrix.map { |line| line.join("") }
    end

    private

    def create_matrix
      Haskii::MimiMatrix.new(@frequences)
      .generate_matrix
    end

    def rotate_matrix
      Haskii::MimiMatrix.rotate(@matrix)
    end

  end
end

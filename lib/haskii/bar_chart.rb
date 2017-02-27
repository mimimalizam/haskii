module Haskii
  class BarChart

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(frequences, emoji).create
    end

    def render
      @matrix.map { |line| line.join("") }
    end

    def create_html
      Haskii::HtmlChart.new(@matrix).create
    end
  end
end

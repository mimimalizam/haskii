module Haskii
  class BarChart

    def initialize(frequences, emoji)
      @matrix = Haskii::MimiMatrix.new(frequences, emoji).create
    end

    def render
      @matrix.map { |line| line.join("") }
    end

    def create_html(file_name)
      Haskii::HtmlChart.new(@matrix).create(file_name)
    end
  end
end

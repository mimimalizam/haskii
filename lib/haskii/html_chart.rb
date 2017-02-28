module Haskii
  class HtmlChart

    def initialize(matrix)
      @matrix = matrix
    end

    def create
      html_file = File.new("chart.html", "w+")
      html_file.puts table
      html_file.close
    end

    private

    def table
      cells = @matrix.map { |row| add_tag(to_cells(row),'tr') }
      .join

      add_tag(cells,'table')
    end

    def to_cells(sequence)
      sequence.map { |node| add_tag(node, 'td') }
      .join
    end

    def add_tag(string, tag)
      "<#{tag}>#{string}</#{tag}>"
    end

  end
end

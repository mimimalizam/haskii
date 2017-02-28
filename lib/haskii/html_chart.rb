module Haskii
  class HtmlChart

    def initialize(matrix)
      @matrix = matrix
    end

    def create(file_name)
      html_file = File.new(file_name, "w+")
      html_file.puts table
      html_file.close
    end

    private

    def table
      cells = @matrix.map { |row| add_tag('tr', transform_to_cells(row)) }
      .join

      add_tag('table', cells)
    end

    def transform_to_cells(row)
      row.map { |node| add_tag('td', node) }
      .join
    end

    def add_tag(tag, string)
      "<#{tag}>#{string}</#{tag}>"
    end

  end
end

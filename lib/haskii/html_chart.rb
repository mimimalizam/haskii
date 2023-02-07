module Haskii
  class HtmlChart < BarChart

    def render
      cells = matrix.map { |row| add_tag('tr', transform_to_cells(row)) }
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

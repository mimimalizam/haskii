module Haskii
  class TerminalChart < BarChart

    def render
      matrix.map { |line| line.join("") }
    end

  end
end

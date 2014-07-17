class Board
  INITIAL = "--------" +
            "--------" +
            "--------" +
            "---XO---" +
            "---OX---" +
            "--------" +
            "--------" +
            "--------" 

  def initialize(string_board = nil)
    if string_board
      @board = string_board
    else
      @board = INITIAL
    end
  end

  def pos(row, col)
    @board.to_s[row*8 + col]
  end

  def to_s
    @board
  end

  def pp
    (0..7).each {|r| puts @board.to_s[r*8,8]}
  end
end

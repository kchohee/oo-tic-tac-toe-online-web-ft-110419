class TicTacToe
  attr_accessor
  def initialize
    @board = Array.new(9," ")
  end
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
  def display_board
    puts row_1 = " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts divider = "-----------"
    puts row_2 = " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts divider
    puts row_3 = " #{@board[6]} | #{@board[7]} | #{@board[8]} "
   end
   def input_to_index(input)
    input.to_i - 1
  end
  def move(index, value)
    @board[index] = value
  end
  def position_taken?(index)
    if @board[index] == " " || @board[index] == ""
      false
    elsif @board[index] == "X" || @board[index] == "O"
      true
    end
  end
end

require_relative "piece_class"

class Board

    # START_POSITION = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
    # START_ROW = [0, 1, 6, 7]

    attr_accessor :board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        #setup_board
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)

    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end
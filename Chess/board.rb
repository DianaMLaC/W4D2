class Board

    def initialize
        @rows = Array.new(8){Array.new(8, nil)}
        @null_piece = :NullPiece 
    end

    def [](pos)
        row, col = pos 
        pos = @rows 
    end

    def []=(pos, val)
        row, col = pos
        @rows = value
    end

    def move_piece(color, start_pos, end_pos)
    end

    def valid_pos?(pos)
        (0..7).include?(pos[0]) && (0..7).include?(pos[1]) 
    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)
    end

    def in_check(color)
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

class Display

    attr_reader :board

    def initialize(board)
        @board = board
    end

    def render
    end

end

class Cursor

    attr_reader :cursor_pos, :board

    def initialize(cursor_pos, board)
        @cursor_pos = cursor_pos
        @board = board
    end

    def get_input
    end

    def toggle_selected
    end

    def handle_key(key)
    end

    def read_char
    end

    def update_pos(diff)
    end

end
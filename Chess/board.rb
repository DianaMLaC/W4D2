class Board
    attr_reader :rows
    
    def initialize
        @rows = Array.new(8) {Array.new(8, nil)}
        populate_board
    end
    
    def move_piece(start_pos, end_pos)

    end

    def populate_board
        @rows.each_with_index do |row, row_idx|
            row.each do |col_idx|
                if row_idx == 0 
                    back_row(row_idx, col_idx, :black)
                elsif row_idx == 7 
                    back_row(row_idx, col_idx, :white)
                elsif row_idx == 1
                    front_row(row_idx, col_idx, :black)
                elsif row_idx == 6 
                    front_row(row_idx, col_idx, :white)
                else 
                @rows[row_idx][col_idx] = NullPiece.instance
                end 
            end 
        end
    end

    def [](pos)
        row, col = pos 
         @board[row][col] 
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def valid_pos?(pos)
        (0..7).include?(pos[0]) && (0..7).include?(pos[1]) 
    end

    def back_row(row_idx, col_idx, color)
        case col_idx
        when 0, 7
            @rows[row_idx][col_idx] = Rook.new(color, :R)
        when 1, 6
            @rows[row_idx][col_idx] = Knight.new(color, :K)
        when 2, 5
            @row[row_idx][col_idx] = Bishop.new(color, :B)
        when 3 
            @row[row_idx][col_idx] = Queen.new(color, :Q)
        when 4 
            @row[row_idx][col_idx] = King.new(color, :K)
        end 
    end 


    def front_row(row_idx,col_idx,color)
        case row_idx
        when 1,6
            @rows[row_idx][col_idx] = Pawn.new(color, :P)
        end 
    end 

end

class Display < Board

    attr_accessor :board

    def initialize
        super
        @board = Board.dup
    end

    # def render
    #     # (2..5).each do |i|
    #     #     (0..7).each do |j|

    #     #     end 
    #     # end 

    #     @board.each_with_index do |row, idxr|
    #         # print "#{idxr}"
    #         row.each_with_index do |square, idxc|
    #             if idxc == nil 
    #                 idxc = nil 
    #             end 
    #         end 
    #     end
    # end

end
c = Board.new
# b = Display.new

pp c.GRID


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

# b = Board.new()

# pp b 
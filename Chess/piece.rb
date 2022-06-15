require "./board.rb"

class Piece
    
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = :symbol
        @board = Board.new
        @pos = pos
    end

    def to_s
    end

    def empty?
    end

    def valid_moves
    end

    def pos=(value) 
    end

    def color #Symbol
    end

    def move_into_check?(end_pos)
    end



end

class Rook < Piece

    include Module_slidable
    
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = ♖
        super
    end


end
    b = Rook.new(blue, 3, [1,1])
    p b
    


# class KinghtKing < Piece

#     require "module_stepable"

#     attr_reader :color, :board, :pos

#     def initialize(color, board, pos)
#         super
#     end

# end

# class Pawn < Piece
#     attr_reader :color, :board, :pos

#     def initialize(color, board, pos)
#         super
#     end

# end

class NulPiece < Piece

    require "module_singleton"


    def initialize(color, board, pos)
        super(color, board, pos)
        @pos = pos 
    end

    def moves 

    end

    def symbol

    end

end
def pieces
    #    :R =[[0, 0], [7, 7], [7, 0], [0, 7]]
    #    :K =[[0, 1], [0, 6], [6, 0], [1, 0]]
    #    :B =[[0, 2], [0, 5], [5, 0], [2, 0]]
    #    :King =[[0, 4],[4, 0]]
    #    :Q =[[0, 3], [3, 0]]
    #    :Pawn =[[1, 0],[1, 1],[1, 2],[1, 3],[1, 4],[1, 5],[1, 6],[1, 7],
    #            [7, 0],[7, 1],[7, 2],[7, 3],[7, 4],[7, 5],[7, 6],[7, 7]]
       

    end
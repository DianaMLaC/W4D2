class Piece
    
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = :color
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

class RookBishopQueen < Piece

    require "module_slidable"
    
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        super
    end


    


end

class KinghtKing < Piece

    require "module_stepable"

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        super
    end

end

class Pawn < Piece
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        super
    end

end

class NulPiece < Piece

    require "module_singleton"

    attr_reader :color

    def initialize(color, board, pos)
        super
    end

    def moves 
    end

    def symbol

end
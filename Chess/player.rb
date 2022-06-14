class Player

    attr_reader :color, :display

    def initialize(color, display)
        @color = color
        @display = display
    end
end

class HumanPlayer < Player

    attr_reader :color, :display
    
    def initialize(color, display)
        super
    end

    def make_move(_board)
    end
end

class ComputerPlayer < Player

    attr_reader :color, :display
    
    def initialize(color, display)
        super
    end

    def make_move(_board)
    end
end
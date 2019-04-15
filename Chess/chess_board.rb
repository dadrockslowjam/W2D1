require_relative "nullpiece"
require_relative "piece"
class Board
    attr_reader :sentinel, :board
    
    def initialize
        
        @sentinel = Nullpiece.instance #initializing Singleton
        @board = Array.new(8) {Array.new(8, self.sentinel)}
        @piece = Piece.new
    end

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []= (pos, val)
        board[pos] = val
    end

    def move_piece(color,start_pos, end_pos)
        # raise "It's not a valid move!" if @rows[start_pos].nil? && @rows[end_pos].nil?
    end

    def valid_pos?(pos)

    end

    def add_piece(piece,pos)

    end

    def checkmate?(color)

    end

    def find_king(color)

    end

    def piece

    end

    def dup

    end

    def move_piece!(color,start_pos, end_pos)

    end
end
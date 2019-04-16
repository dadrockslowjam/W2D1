require_relative "nullpiece"
require_relative "piece"

class InvalidMoveError < StandardError; end
class NullPieceError < StandardError; end

class Board
    attr_reader :sentinel, :board

    def initialize
        @sentinel = Nullpiece.instance #initializing Singleton
        @board = Array.new(8) {Array.new(8, self.sentinel)}
        self.pieces
    end

    # syntactic sugar: [pos]
    def [](pos)
        row,col = pos
        @board[row][col]
    end

    def []= (pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        self.valid_pos?(start_pos, end_pos)
        piece = self[start_pos]
        self[start_pos] = @sentinel
        self.add_piece(piece, end_pos)
    end

    def valid_pos?(start_pos,end_pos)
        if self[start_pos].nil? || self[end_pos].nil?
            raise InvalidMoveError.new("It's not a valid move!") 
        end

        if self[start_pos].is_a?(Nullpiece)
            raise NullPieceError.new("No piece at this position!")
        end
    end

    def add_piece(piece,pos)
        self[pos] = piece
    end

    def checkmate?(color)

    end

    def find_king(color)

    end

    def pieces
        (0...2).each do |i|
            (0...8).each do |j|
                @board[i][j] = Piece.new
            end
        end

        (6..7).each do |i|
            (0...8).each do |j|
                @board[i][j] = Piece.new
            end
        end

    end

    def dup

    end

    def move_piece!(start_pos, end_pos)

    end
end
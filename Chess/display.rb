require_relative "chess_board" # also require our own ruby files
require_relative "./cursor.rb" # require our own ruby files
require "colorize" # require ruby gem

class Display
    def initialize

        @cursor = Cursor.new([0,0])

    end
    
# optional
    # def colorized_board
    #     i = 0
    #     vis_board = Array.new(8) {Array.new(1, "")}
    #     k = 0
    #     while i < 8
    #         j = 0 
    #         while j < 8
    #             if (j + k) % 2 == 0
    #                 vis_board[i][0] += "  ".colorize(:background => :black)
    #             else
    #                 vis_board[i][0] += "  ".colorize(:blackground =>:white)
    #             end
    #             j += 1
    #         end
    #         k += 1; i += 1
    #     end
    #     vis_board
    # end

end
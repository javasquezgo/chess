require_relative './invalid_move_error.rb'
require_relative './pieces.rb'
require_relative './board_renderer_text.rb'
require_relative './board.rb'
require_relative './player.rb'
require_relative './game.rb'

b = Board.start_chess
g = Game.new(
  b, 
  Player.new(:black), 
  Player.new(:white),
  BoardRendererText
)
g.play
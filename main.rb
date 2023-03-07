require_relative "class Player"
require_relative "class Current_player"
require_relative "class Game"

one = Player.new("Player 1")
two = Player.new("Player 2")
game = Game.new
current = Current_player.new(one, two)
while !game.over
  game.guess(current.next)
  game.status(one, two)
end


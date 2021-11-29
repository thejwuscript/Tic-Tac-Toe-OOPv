require './board.rb'
require './players.rb'
require './gameassist.rb'

facilitator = GameAssist.new
circle = Players.new('O')
cross = Players.new('X')

a1 = Board.new('A1', '_')
a2 = Board.new('A2', '_')
a3 = Board.new('A3', ' ')
b1 = Board.new('B1', '_')
b2 = Board.new('B2', '_')
b3 = Board.new('B3', ' ')
c1 = Board.new('C1', '_')
c2 = Board.new('C2', '_')
c3 = Board.new('C3', ' ')

facilitator.give_intro
Board.display_board

i = 0 #turn count
loop do
  puts " \nX's turn. Enter a coordinate."
  cross.enter_coordinate
  cross.validate_move
  Board.change_value(cross.input, cross.name)
  Board.display_board
  cross.check_victory
  break if cross.winner == 1
  i += 1
  if i == 9
    puts " \nIt's a draw. Game over."
    break
  end
  puts " \nO's turn. Enter a coordinate."
  circle.enter_coordinate
  circle.validate_move
  Board.change_value(circle.input, circle.name)
  Board.display_board
  circle.check_victory
  break if circle.winner == 1
  i += 1
  if i == 9
    puts " \nIt's a draw. Game over."
    break
  end
end
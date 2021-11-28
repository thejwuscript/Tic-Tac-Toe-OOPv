require './board.rb'
require './players.rb'
require './gameassist.rb'

referee = GameAssist.new
circle = Players.new('O', '')
cross = Players.new('X', '')

a1 = Board.new("A1", "_")
a2 = Board.new("A2", "_")
a3 = Board.new("A3", " ")
b1 = Board.new("B1", "_")
b2 = Board.new("B2", "_")
b3 = Board.new("B3", " ")
c1 = Board.new("C1", "_")
c2 = Board.new("C2", "_")
c3 = Board.new("C3", " ")

Board.display_board

i = 0
loop do
cross.input = gets.chomp.upcase
Board.change_value(cross.input,cross.name)
Board.display_board
#----------Check for victory status-------
i += 1
break if i == 9
circle.input = gets.chomp.upcase
Board.change_value(circle.input, circle.name)
Board.display_board
#----------Check for victory status-------
i += 1
break if i == 9
end
# frozen_string_literal: true

require './board'
require './players'
require './gameassist'

facilitator = GameAssist.new
facilitator.give_intro

loop do
  circle = Players.new('O')
  cross = Players.new('X')

  Board.new('A1', '_')
  Board.new('A2', '_')
  Board.new('A3', ' ')
  Board.new('B1', '_')
  Board.new('B2', '_')
  Board.new('B3', ' ')
  Board.new('C1', '_')
  Board.new('C2', '_')
  Board.new('C3', ' ')
  Board.display_board

  i = 0 # turn count
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

  print 'Play again? (y/n) '
  break if gets.chomp.downcase == 'n'

  puts ''
end

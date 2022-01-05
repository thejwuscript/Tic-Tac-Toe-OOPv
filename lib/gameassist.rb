# frozen_string_literal: true

class GameAssist
  def initialize; end

  def give_intro
    puts " \nLet's play Tic Tac Toe."
    puts " \nThe board is divided into 9 equal spaces. Each space is a coordinate. For example, 'B2' is right in the center."
    puts ''
    puts '  A B C'
    puts '1 _|_|_'
    puts '2 _|X|_'
    puts '3  | | '
    puts " \nEach player will enter a coordinate to make their move on their turn."
    puts " \nGame Start!"
    puts ''
  end
end

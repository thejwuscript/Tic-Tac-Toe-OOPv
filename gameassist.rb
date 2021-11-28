class GameAssist
  def give_intro
    puts "Let's play Tic Tac Toe."
    puts ''
    puts "The board is divided into 9 equal spaces. Each space is a coordinate. For example, 'B2' is right in the center."
    puts ''
    puts '   A   B   C'
    puts '1 ___|___|___'
    puts '2 ___|_X_|___'
    puts '3    |   |   '
    puts ''
    puts 'Each player will enter a coordinate to make their move on their turn.'
    puts ''
    puts 'Game Start!'
    puts ''
  end

  def wait_for_play
    puts "X's turn. Type a coordinate."
    puts ''
  end
end


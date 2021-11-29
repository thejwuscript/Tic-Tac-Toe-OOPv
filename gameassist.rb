class GameAssist < Board
  def initialize; end

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

  def occupied_by_X?(input)
    if @@all[input] == "X"
      puts "Invalid play. Try again."
      return true
    end
  end
  
  def occupied_by_O?(input)
     if @@all[input] == "O"
      puts "Invalid play. Try again."
      return true
    end
  end

=begin
  def three_in_a_row?
    if @@all['A1'] == @@all['A2'] && @@all['A1'] == @@all['A3'] && @@all['A1'] != "_"
      true
    elsif @@all['B1'] == @@all['B2'] && @@all['B1'] == @@all['B3'] && @@all['B1'] != "_"
      true
    elsif @@all['C1'] == @@all['C2'] && @@all['C1'] == @@all['C3'] && @@all['C1'] != "_"
      true
    elsif @@all['A1'] == @@all['B1'] && @@all['A1'] == @@all['C1'] && @@all['A1'] != "_"
      true
    elsif @@all['A2'] == @@all['B2'] && @@all['A2'] == @@all['C2'] && @@all['A2'] != "_"
      true
    elsif @@all['A3'] == @@all['B3'] && @@all['A3'] == @@all['C3'] && @@all['A3'] != " "
      true
    elsif @@all['A1'] == @@all['B2'] && @@all['A1'] == @@all['C3'] && @@all['A1'] != "_"
      true
    elsif @@all['C1'] == @@all['B2'] && @@all['C1'] == @@all['A3'] && @@all['C1'] != "_"
      true
    else false
    end
  end
=end
end

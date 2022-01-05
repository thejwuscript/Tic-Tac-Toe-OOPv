# frozen_string_literal: true

class Players < Board
  attr_accessor :name, :input, :moves, :winner

  def initialize(name)
    @name = name
    @input = ''
    @moves = []
    @winner = 0
  end

  def enter_coordinate
    @input = gets.chomp.upcase
  end

  def validate_move
    loop do
      if @@all.key?(@input) == true && @@all[@input] != 'X' && @@all[@input] != 'O'
        @moves << @input
        break
      else
        puts 'Invalid play. Try again.'
        @input = gets.chomp.upcase
        next
      end
    end
  end

  def check_victory
    case
    when
      (@moves & ["A1", "B1", "C1"]).sort == ["A1", "B1", "C1"],
      (@moves & ["A2", "B2", "C2"]).sort == ["A2", "B2", "C2"],
      (@moves & ["A3", "B3", "C3"]).sort == ["A3", "B3", "C3"],
      (@moves & ["A1", "A2", "A3"]).sort == ["A1", "A2", "A3"],
      (@moves & ["B1", "B2", "B3"]).sort == ["B1", "B2", "B3"],
      (@moves & ["C1", "C2", "C3"]).sort == ["C1", "C2", "C3"],
      (@moves & ["A1", "B2", "C3"]).sort == ["A1", "B2", "C3"],
      (@moves & ["A3", "B2", "C1"]).sort == ["A3", "B2", "C1"]
      puts " \n#{@name} wins the game!"
      @winner = 1
    end
  end
end

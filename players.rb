class Players < Board
  attr_accessor :name, :input

  def initialize(name, input)
    @name = name
    @input = input
  end

  def enter_coordinate
    @input = gets.chomp.upcase
  end

  def validate_move
    loop do
      if @@all.key?(@input) == true && @@all[@input] != 'X' && @@all[@input] != 'O'
        break
      else
        puts 'Invalid play. Try again.'
        @input = gets.chomp.upcase
        next
      end
    end
  end

end

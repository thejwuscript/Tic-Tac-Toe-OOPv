class Board
  attr_accessor :value, :coordinate

  @@all = {}

  def initialize(coordinate, value)
    @coordinate = coordinate
    @value = value
    @@all[@coordinate] = value
  end

  def self.change_value(key, value)
    @@all[key] = value
  end

  def self.display_board
    puts '  A B C'
    puts "1 " + @@all['A1'] + '|' + @@all['B1'] + '|' + @@all['C1']
    puts "2 " + @@all['A2'] + '|' + @@all['B2'] + '|' + @@all['C2']
    puts "3 " + @@all['A3'] + '|' + @@all['B3'] + '|' + @@all['C3']
  end
end

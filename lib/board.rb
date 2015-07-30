class Board

  attr_reader :ships, :grid

  def initialize (options )
    @grid = options[:grid]
    @ships = []
  end

  def place(ship, coordinate, direction, grid = @grid)
    @grid.insert(ship, coordinate)
    array = coordinate.scan(/\d+|\D+/)
    number = array[1]
    letter = array[0]
    (ship.size).times do
      if direction == :horizontal
        number = number.next
      elsif direction == :vertical
        letter = letter.next
      else
        return "not valid coordinate"
      end
      coordinate = (letter + number)
      @grid.insert(ship, coordinate)
    end
    ship.confirm_place
    add_ship ship
  end

  def add_ship ship
    @ships << ship
  end

  def display
    grid.grid_locations.each do |row|
      p row.map{|cell|cell.content.respond_to?(:placed?) ? "S" : "~"}
    end
    nil
  end

end


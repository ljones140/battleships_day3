class Board

  attr_reader :ships, :grid
  attr_writer :coordinate

  def initialize (options )
    @grid = options[:grid]
    @ships = []
  end

  def coordinate_generator( size, coordinate, direction)
    letter, number = coordinate.scan(/\d+|\D+/)
    coords = [coordinate]
    (size - 1).times do
        coords << (direction == :horizontal ? coords.last.next : coords.reverse.next.reverse)
    end
    coords
  end

  def place(ship, coordinate, direction)   #, grid = @grid)
    coordinate_generator(ship.size, coordinate, direction).each do |coord|
      @grid.insert(ship, coord)
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


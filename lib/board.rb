class Board

  attr_reader :ships, :grid
  attr_writer :coordinate

  def initialize (options )
    @grid = options[:grid]
    @ships = []
  end

  def coordinate_generator( size, coordinate, direction)
    check_valid_direction direction
    coords = [coordinate]
    (size - 1).times do
        coords << (direction == :horizontal ? coords.last.next : coords[-1][0,1].next + coords[-1][1,10] )
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

  private

  def check_valid_direction direction
    raise "only horizontal or vertical allowed" unless direction == :horizontal or direction == :vertical
  end
end


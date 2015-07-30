class Board

  attr_reader :ships, :grid

  def initialize (options )
    @grid = options[:grid]
    @ships = []
  end

  def place(ship, coordinate, grid = @grid)
    add_ship ship
    @grid.insert(ship, coordinate)
    ship.confirm_place
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


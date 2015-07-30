class Board

  attr_reader :ships, :grid

  def initialize (options )
    @size = options[:size]
    @container = options[:container]
    @ships = []
    @grid = @container.new(options = { size: @size })
  end

  def place(ship, coordinate, grid = @grid)
    add_ship ship
    @grid.insert(ship, coordinate)
    ship.confirm_place
  end

  def add_ship ship
    @ships << ship
  end

end


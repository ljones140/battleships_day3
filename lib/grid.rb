require_relative 'water'

class Grid

  DEFAULT_SIZE = 10

  attr_reader :grid_locations, :size, :cell_content

  def initialize(options)
    @size = options[:size] || DEFAULT_SIZE
    @content = options[:content]
    @cell_content = options[:cell_content]
    create_grid
  end

  def insert(ship, coordinate)
    coordinate_converter(coordinate)
    check_grid_location_exits(@coordinates)
    check_overlap(@coordinates)
    grid_locations[@coordinates[0]][@coordinates[1]].content = ship
  end


  private

  def check_grid_location_exits (coordinates)
    raise "Can't place ship off board" if coordinates[0] > @size or coordinates[1] > @size
  end

  def create_grid
    @grid_locations = Array.new(@size){Array.new(@size)}
    populate_grid
  end

  def populate_grid
    @grid_locations = @grid_locations.map! { |inner_array| inner_array.map! {|x| x = @content.new({content: cell_content}) } }
  end

  def check_overlap coordinates
    fail "Ship already in location" if grid_locations[@coordinates[0]][@coordinates[1]].content != @cell_content
  end

  def coordinate_converter(coordinate)
    x = coordinate.slice(0).upcase.ord - 65
    coordinate.slice!(-0)
    y = coordinate.to_i
    y = y -1
    @coordinates = [x,y]
  end
end

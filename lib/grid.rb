# require_relative "cell"

class Grid

  # def self.create (options = { size: @size })
  #   size = options[:size]
  #   Grid.new(options = { size: size, content: Cell })
  # end

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
    grid_locations[@coordinates[0]][@coordinates[1]].content = ship
  end


  private

  def create_grid
    @grid_locations = Array.new(@size){Array.new(@size)}
    populate_grid
  end

  def populate_grid
    @grid_locations = @grid_locations.map! { |inner_array| inner_array.map! {|x| x = @content.new({content: cell_content}) } }
  end

  def coordinate_converter(coordinate)
    x = coordinate.slice(0).upcase.ord - 65
    coordinate.slice!(-0)
    y = coordinate.to_i
    y = y -1
    @coordinates = [x,y]
  end
end

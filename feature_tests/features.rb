require '../lib/board.rb'
require '../lib/grid.rb'
require '../lib/cell.rb'
require '../lib/ship.rb'
require '../lib/water.rb'

# cell = Cell.new({content: Water})
grid = Grid.new({size: 10, content: Cell, cell_content: Water})
board = Board.new({size: 10, grid: grid}	)

p board


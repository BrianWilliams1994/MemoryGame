require File.join(File.dirname(__FILE__), 'tile.rb')

class Game
  NUMBER_OF_ROWS = 4
  NUMBER_OF_COLUMNS = 4

  def initialize
    @tile_values = ['Brian', 'Emily', 'Joe', 'Ben', 'Josh', 'Miguel', 'Matt', 'Phil']
  end

  def build_grid
    all_tiles = (@tile_values * 2).shuffle
    all_tiles = all_tiles.map { |name| Tile.new(name)}
    @grid = []
    NUMBER_OF_ROWS.times do 
      @grid << all_tiles.pop(NUMBER_OF_COLUMNS)
    end
    @grid
  end

  def grid
    @grid ||= build_grid
  end

  def guess selected_tile
    #set guess_row and guess_column based on selected_tile
    #look at string split
    guess_row = 0 #fix this  
    guess_column = 0  #fix this
    guessed_tile = @grid[guess_row][guess_column]
    guessed_tile.select!
  end

end

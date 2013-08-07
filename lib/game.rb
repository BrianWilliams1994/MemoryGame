
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

end

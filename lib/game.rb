class Game

  def initialize
    @tile_values = ['Brian', 'Emily', 'Joe', 'Ben', 'Josh', 'Miguel', 'Matt', 'Phil']
  end

  def rows
      
      ['Brian', 'Emily', 'Joe', 'Ben', 'Josh', 'Miguel', 'Matt', 'Phil'] * 2

      @tile_values.shuffle
      
    # Your code here
    # create the board randomly
    # each tile value shoudl appear twice in the finished board
    # see http://www.ruby-doc.org/core-1.9.3/Array.html
    [['Brian', 'Emily'], ['Brian', 'Emily']]
  end

end

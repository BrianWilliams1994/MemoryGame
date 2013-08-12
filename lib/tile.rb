class Tile
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
  def select!
    @selected = true
  end

  def selected?
    @selected
  end
end

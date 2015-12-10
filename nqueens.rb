class Coord
  attr_reader :x, :y
  def initialize(x, y)
    @x = x 
    @y = y
  end 
  def equals?(coord)
    if coord.x == @x && coord.y == @y
      return true
    else 
      return false
    end
  end
end

@arr = []

@n = 8

def print_board
  (0..@n-1).each do |y|
    (0..@n-1).each do |x|
      if has_queen?(Coord.new(x, y)) 
        print " Q "
      else 
        print " - "
      end
    end
    puts
  end
end

def has_queen?(coord)
  @arr.each do |queen| 
    if queen.equals?(coord)
      return true
    end
  end
  return false
end




def place_next_queen
  (0..@n).each do |y|
    (0..@n).each do |x|
      c = Coord.new(x, y)
      if is_open?(c)
        @arr << c
        place_next_queen
      end
    end
  end

  @arr.pop

 if @arr.length == @n
    print_board
    exit 
  end
end


def is_open?(coord)
  @arr.each do |queen|
    if queen.y == coord.y || queen.x == coord.x || 
      (queen.x + queen.y) == (coord.x + coord.y) || 
      (queen.x - queen.y) == (coord.x - coord.y)
      return false
    end
  end
    return true
end


place_next_queen
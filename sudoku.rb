class Board

  def initialize
      @arr = [[0,0,0,2,0,4,9,0,1],
              [0,9,1,0,8,0,0,0,2],
              [6,0,2,0,0,0,0,0,5],
              [0,1,0,8,4,0,0,5,7],
              [2,0,0,7,0,1,0,0,3],
              [7,8,0,0,5,2,0,6,0],
              [1,0,0,0,0,0,5,0,4],
              [4,0,0,0,2,0,3,9,0],
              [8,0,5,4,0,9,0,0,0]]
  end

  def valid_square?(x,y)
return true
  end

  def valid_row?(x,y)
    target_value = get_value(x,y)
    (0...9).each do |col|
      current_value = get_value(col,y)
      if target_value == current_value && x != col
        return false
      end
    end
    return true
  end

  def valid_column?(x,y)
return true
  end  

  def valid?(x,y)
    if valid_column?(x,y) == true && valid_row?(x,y) == true && valid_square?(x,y) == true
      return true
    else 
      return false
    end
  end


  def get_value(x,y)
    return @arr[y][x]
  end

  def set_value(x,y,v) 
    @arr[y][x] = v
  end

  def board_print
    (0...9).each do |x| 
      (0...9).each do |y| 
        print @arr[x][y]
      end
      puts
    end
  end
end

@b = Board.new

def choose_number(i)
  x = i % 9
  y = i / 9
  if @b.get_value(x,y) > 0 
    choose_number(i + 1)
  else 
    (1..9).each do |n|
      @b.set_value(x,y,n)
      if @b.valid?(x,y)
        if i == 80
          puts @b.board_print
          exit
        end
        choose_number(i + 1)
      end
    end
  end
end


choose_number(0)

class Board

  def initialize
      @arr = [[0]*9]*9
      
       
      
      puts @arr

  end

  def board_print
    (0..9).each do |y| 
      (0..9).each do |x| 
        print " - "
      end
    end
  end
end

puts Board.new.board_print
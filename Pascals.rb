def pascals(rows)
    times = 0
     old = [1,1]
    current = []
    puts "1"
   if rows == 1
    
    puts "11"

    until times == rows do
        current << 1

        old.each_with_index do |item, index|
            if index < old.length-1
                current << old[index] + old[index+1]
            end
        end
        times = times+1
        current << 1 
        puts current.join(" ")
        old = current
        current = []
    end
    end
end

pascals(1)
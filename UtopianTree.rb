#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    
    height = 1
    
    n.times do|i|
        (i + 1).odd? ? height *= 2 : height += 1
    end
    
    puts height
end

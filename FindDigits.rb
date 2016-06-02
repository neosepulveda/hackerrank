#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    
    arr = n.to_s.split('').map(&:to_i)
    counter = 0
    
    arr.size.times do |i|
        next if arr[i] == 0
        
        counter += 1 if (n % arr[i].to_i) == 0
    end
    
    puts counter
end

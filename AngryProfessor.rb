#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    
    on_time_students = 0
    late_students = 0
    
    for i in 0..n-1 do
        if a[i] <= 0 then
            on_time_students += 1
        else
            late_students += 1
        end
            
        if on_time_students >= k then
            puts "NO"
            break
        end
            
        if late_students > n-k then
            puts "YES"
            break
        end
    end
end

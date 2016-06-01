#!/bin/ruby

def printnumber(n)    
    if n < 10 then
        return "0" + n.to_s
    else
        return n.to_s
    end
end

time = gets.strip.split(":")

format = 0   #0 = AM,    1 = PM

if time[time.size-1].upcase.include? "AM" then
    format = 0
else
    format = 1
end
    
time = time.map(&:to_i)
    
time2 = time
    
if time[0] == 12 && format == 0 then       
    time2[0] = 0
elsif time[0] != 12 && format == 1 then
    time2[0] += 12
end

puts printnumber(time2[0]) + ":" + printnumber(time2[1]) + ":" + printnumber(time2[2])

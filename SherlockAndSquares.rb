# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.to_i

n.times do
    a,b = gets.strip.split(' ')
    a = a.to_i
    b = b.to_i
    puts (Math.sqrt(b).floor) - (Math.sqrt(a).ceil) + 1
end

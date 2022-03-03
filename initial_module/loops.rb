i = 0 

puts "Type an Integer: "
x = gets.chomp.to_i

while i < x do
    puts i
    i += 1
end

puts "----------- EACH LOOP ----------"

(0 .. x).each do |i|
    puts i
end

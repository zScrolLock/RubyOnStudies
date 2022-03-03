puts "Type something here: "
something = gets.chomp

# .chomp is for Clean STDIN on GETS

puts something
puts "------------------------------------- INSPECT -------------------------------------"
puts something.inspect


puts "Type some value (Integer): "
value_i = gets.to_i

puts "Type some value (Float): "
value_f = gets.to_f

puts "------------------------------------------------------------------------------------"

puts "Convert Values to STR: (Integer) " + value_i.to_s + " " + value_i.class.to_s + " (Float) " + value_f.to_s + " " + value_f.class.to_s

# .chomp - CLEAN STDIN
# .inspect - SHOW THE TRUE VALUE OF AN VARIABLE

# COERÇÂO 
# to_s - TO STRING
# to_i - TO INTEGER
# to_f - TO FLOAT
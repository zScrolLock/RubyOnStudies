puts "Type an Integer Value to Compare: "
x = gets.chomp.to_i

if x >= 10
    puts "The X value is Greater Than or Equals 10"
else
    puts "The X value is Less Than 10"
end

case x
when 0 .. 5
    puts "Bebe"
when 6 .. 13
    puts "Criança"
when 14 .. 18
    puts "Adolescente"
else
    puts "Adulto"
end
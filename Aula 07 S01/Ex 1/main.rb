puts "Digite três números: "
puts "Número 1"
numero1 = gets.chomp.to_f

puts "Número 2"
numero2 = gets.chomp.to_f

puts "Número 3"
numero3 = gets.chomp.to_f

media = (numero1 + numero2 + numero3) / 3
puts "Média = #{media}"
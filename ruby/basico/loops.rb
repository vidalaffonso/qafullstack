#concatenando e contando a mensagem convertendo para string isso é uma array

# 5.times do |i|
#   puts "Repetindo a mensagem " + i.to_s + "vez(es)."
# end

# trabalhar com While

# init = 0

# while init <= 10
#   puts "Repetindo a mensagem  " + init.to_s + "  vez(es)."
#   init += 1
# end

# for item in (0...10)
#   puts "Repetindo a mensagem  " + item.to_s + "  vez(es)."
# end

#variável que recebe um array de string

vingadores = ["Iroman", "Hulk", "Spiderman", "Thor"]
#for each uma estrutura de repetição
vingadores.each do |v|
  puts v
end

# Ruby é uma linguagem considerada puramente orientada a objetos
#Por que no ruby tudo são objetos

#Classe possui atributos e metodos
#Caracteristicas e Ações

#ex Carro (nome, Marca,Modelo, Cor, Quantidade de portas etc)
#metodos Ligar, Businar, Parar

class Carro

  #classe possui atributos
  attr_accessor :nome

  def ligar
    puts "O carro está pronto para iniciar o projeto"
  end
end

civic = Carro.new
puts civic.class
#metodo
civic.ligar

civic.nome = "Civic"

puts civic.nome

#objeto de coleção de dados, de chave e valor, parecido com array

#nome, marca e cor é a chave, Civic, Honda e Vermelho é valor

carro = Hash[nome: "Civic", marca: "Honda", cor: "Vermelho"]

#exibir somente o nome, marca, cor
puts carro[:nome]

carro[:modelo] = "SI"
puts carro

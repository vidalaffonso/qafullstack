
# reaproveitamento de códigos utilizando coisas em comum que da para usar em carro e moto
class Veiculo
    attr_accessor :nome, :marcar, :modelo

    def initialize(nome, marca, modelo)
    self.nome = nome
    self.marcar = marca
    self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end

    def buzinar
        puts 'Beep Beep'
    end  
end
# para herdar uma classe tem que passar "< Veiculo" ela herda todas as caracteristicas
class Carro < Veiculo

    def dirigir
        puts "#{nome} Iniciando o trajeto"
    end
    
end

class Moto < Veiculo

    def pilotar
        puts "#{nome} Iniciando o trajeto"
    end
end

#variavel

civic = Carro.new('Civic', 'Honda', 'SI')
#puts civic.nome
civic.ligar
civic.buzinar
civic.dirigir


lancer = Carro.new('Lancer', 'Mitsubish', 'Evo')
lancer.ligar
lancer.buzinar
lancer.dirigir

#instanciando mais um objeto
fazer = Moto.new('Fazer', 'Yamanha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar
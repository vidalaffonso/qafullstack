class Conta
attr_accessor :saldo, :nome 
#metodo construtor initialize
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome 
    end
    
     def deposita(valor)
       self.saldo  += valor
       puts "Depositando a quantia de #{valor} reais na conta #{self.nome}."
     end
   end
   
   c = Conta.new('Vidal')
   c.deposita(100.00)
   puts c.saldo

#Acrescentando 10.00 no código
   c.deposita(10.00)
   puts c.saldo

   puts c.nome
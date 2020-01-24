

class Conta
 #attr_acessor é um atributo do ruby
  attr_accessor :saldo
  def deposita(valor)
    puts valor.class
    #puts 'depositando a quantia de '  + valor.to_s + 'reais.'
    #interpolação ele faz a interpolação de string automática
    #rself é um recurso do ruby para invocar um outro objeto da minha propria classe, 
    #invocar um metodo e um atributo dentro da propria classe
    self.saldo += valor 
    puts "Depositando a quantia de #{valor} reais."
  end
end

#instanciando uma nova conta na variavel C
c = Conta.new

#inicializar a conta com 0.0 para não ter problemas com tipagem de dados
 c.saldo = 0.0
#chamando o metódo deposita 

c.deposita(100.00)
puts c.saldo

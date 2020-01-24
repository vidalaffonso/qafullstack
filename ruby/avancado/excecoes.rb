# 


# begin
#     # devo tentar alguma coisa

#     file = File.open('./ola.txt')

#     if file
#         puts file.read
        
#     end
# rescue Exception => e 
#     #obter um possivel erro
#     puts e.message
#     #tras a linha de código com erro 
#     puts e.backtrace
# end

#metodo com tratamento de excessão 
def soma(n1, n2)
 n1 + n2
    rescue Exception => e
     puts 'Erro ao executar a soma'  
end

soma('10', 5)



class AvengersHeadQuarter
    #criar o metodo que recebe um vingador
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        #add um vingador na lista
        puts self.class
        self.list.push(avenger)


    end
end


#TDD desenvolvimento guiado por teste

describe AvengersHeadQuarter do
    

it 'deve adcionar um vingador' do
    #instanciando a classe
    hq = AvengersHeadQuarter.new
    hq.put('Spiderman')
    #expect(hq.list).to eql ['Spiderman']
    #poderia usar o include
    expect(hq.list).to include 'Spiderman'

end

it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    #expect(hq.list).to include 'Thor'
    #para verificar se é uma lista usa o metod size
    expect(hq.list.size).to be > 0
    #verificar se a lista é maior que zero
    res = hq.list.size > 0
    expect(res).to be true
end

it 'Thor deve ser o primeiro da lista' do 
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')


end

it 'iroman deve ser o ultimo da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')
    hq.put('Iroman')
    expect(hq.list).to end_with('Iroman')
end

it 'deve conter o sobrenome' do
    avenger = 'Peter Parker'


    #fazendo a validação com expressão regular

    expect(avenger).to match(/Parker/)

    #verificar se ele não contem
    expect(avenger).not_to match(/Vidal/)
end

end
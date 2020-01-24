class AvengersHeadQuarter
    attr_accessor :list
    def initialize
        self.list = []
        
    end
    def put(avenger)
        self.list.push(avenger)
    end

end

#TDD teste guiado por comportamento
escribe AvengersHeadQuarter do
    it 'deve adcionar um vingador' do
        #instancio a classe
        hq = AvengersHeadQuarter.new
        #metodo para adcionar um vingador PUT
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end
end

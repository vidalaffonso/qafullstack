
describe 'Caixa de opções', :dropdown do
    
    it 'item_especifico simples' do
    visit '/dropdown'
    #possui ID
    select('Loki', from: 'dropdown')
    sleep 3
end

it 'item especifico com o find' do
    visit '/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3

end

it 'qualquer item', :sample do
    visit '/dropdown'
    drop = find('.avenger-list')
    #metodo sample ele escolhe um dos elementos aleatoriamento 
    drop.all('option').sample.select_option
    #retorna um array de options
    sleep 3
end
end

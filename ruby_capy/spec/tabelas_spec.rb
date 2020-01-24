
describe 'tabelas', :tabs do
    
before(:each) do
   visit '/tables' 
end

# it 'pega o tony stark na lista' do
#     expect(page).to have_content 'Robert Downey Jr'


# end
it 'deve exinir o salario do stark'do
    atores = all('table tbody tr')
    #metodo detect do ruby está perguntando se na tabela tem um texto de Robert Downey Junior
    stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}
    #puts stark.text 

    expect(stark.text).to include '10.000.000'
end

it 'deve exibir o salário do Vin Diesel' do
    diesel = find('table tbody tr', text:'@vindiesel')
    expect(diesel).to have_content '10.000.000'

end

it 'deve exibir o filme velozes' do
    diesel = find('table tbody tr', text:'@vindiesel')
    #retorna um array está sendo pesquisado na posição 2
    movie = diesel.all('td')[2].text
    expect(movie).to eql 'Fast and Furious'
end

it 'deve exibir insta do Chris Evans ' do
    evans = find('table tbody tr', text:'Chris Evans')
    insta = evans.all('td')[4].text
    expect(insta).to eql '@teamcevans'


end

it 'deve selecionar Chris Prat para remoção' do
    prat = find('table tbody tr', text:'Chris Prat')
    prat.find('a', text: 'delete').click
    # verificando a mensagem de exclusão
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
end

it 'deve selecionar Chris Prat para edição' do
    prat = find('table tbody tr', text:'Chris Prat')
    prat.find('a', text: 'edit').click
    # verificando a mensagem de exclusão
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
end

end
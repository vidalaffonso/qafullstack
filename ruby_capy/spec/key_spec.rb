
describe 'Teclado', :smock do
    
    before(:each) do
        visit '/key_presses'

    end

    it 'enviando teclas' do
        #realizando um array 
        teclas = %i[tab escape  space enter shift control alt] 
        #iterar as teclas
        teclas.each do |t|
        find('#campo-id').send_keys t
        #convertendo o símbolo para string
        expect(page).to have_content 'You entered: ' + t.to_s.upcase
       
    end
end

it 'enviando letras' do
    letras = %w[ a s d f g h k l ]
    letras.each do |l|
        find('#campo-id').send_keys l
        #convertendo o símbolo para string
        expect(page).to have_content 'You entered: ' + l.to_s.upcase  
        sleep 1 
    end
end

end
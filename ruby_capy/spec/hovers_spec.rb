
describe 'Mouse Hover', :hovers do
    before(:each) do
        visit '/hovers'
    end
it 'Quando passo o mouse no Blade' do
   card = find('img[alt="Blade"]')
   card.hover

   expect(page).to have_content 'Nome: Blade'

end

it 'Quando passo o mouse no Pantera Negra' do
    #utilizano expressão regular REGEX alt que começa com "Pantera"
    card = find('img[alt^="Pantera"]')
    card.hover
 
    expect(page).to have_content 'Nome: Pantera Negra'
 
 end
 #utilizano expressão regular REGEX alt que termina com "Aranha"
 it 'Quando passo o mouse no Homem Aranha' do
    card = find('img[alt$="Aranha"]')
    card.hover
 
    expect(page).to have_content 'Nome: Homem Aranha'
 
 end
after(:each) do
    sleep 4
end


end

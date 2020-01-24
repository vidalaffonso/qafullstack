

describe 'Botões de Radio', :radio do
    

before(:each) do
    visit '/radios'

end
it 'selecao por ID' do
    
    choose('cap')
end

it 'selecao por Find e css selector' do
    find('input[value="guardians"]').click
end

after(:each) do
    sleep 4

end

end


describe 'caixa de seleção', :checkbox do
#antes de todos os cenarios ele vai executar esse before
    before(:each) do
        visit '/checkboxes'
    end
    #funciona com ID ou name
it  'marcando uma opção' do
    check('thor')

end
#funciona com ID ou name
it 'desmarcando uma opção' do
    uncheck('antman')
end

#não tiver id nem name
it 'marcando com find set true' do
    find('input[value="cap"]').set(true)

end

it 'desmarcando com find set false' do
    find('input[value="guardians"]').set(false)

end

after(:each) do
    sleep 4
end
end


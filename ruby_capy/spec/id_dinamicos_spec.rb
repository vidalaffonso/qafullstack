
describe '', :dinamico do
    before(:each) do
        visit '/access' 
    end 

    #  $ => termina com
    #  ^ => começa com
    #  * =>  contem
it 'cadastro' do
    #find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'vidal'
    find('input[id$=tUsernameInput]').set 'vidal'
    #find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set 'affonso'
    find('input[id^=PasswordInput]').set 'affonso'
    #find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click
    find('a[id*=GetStartedButton]').click

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
end

end

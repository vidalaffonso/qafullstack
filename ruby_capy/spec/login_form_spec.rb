describe 'Forms', :login do
    
    it 'login com sucesso' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'
        sleep 5
         expect(find('#flash').visible?).to be true
         #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
         expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

         #page.save_screenshot('log/login_com_sucesso.png')
    end
    it 'senha incorreta' do
        visit '/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'xpto123'
        click_button 'Login'
        expect(find('#flash')).to have_content 'Senha é invalida!'
        #page.save_screenshot('log/senha_incorreta.png')
end
it 'usuario não cadastrado' do
    visit '/login'
    fill_in 'userId', with: 'hulk'
    fill_in 'password', with: 'xpto123'
    click_button 'Login'
    expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    #page.save_screenshot('log/usuario_nao_cadastrado.png')
end
#obter o screenchot de todos os cenário dessa instancia de teste


end

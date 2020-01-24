

describe 'Upload', :upload do
    

before(:each) do
    visit '/upload'
    #metodo que retorna o caminho 
    @arquivo = Dir.pwd + '/spec/fixtures/upload.txt'
    @imagem = Dir.pwd + '/spec/fixtures/upload_imagem.jpg'
end
it 'upload com arquivo texto' do
   attach_file('file-upload', @arquivo)
   click_button 'Upload'
  div_arquivo= find('#uploaded-file')
  expect(div_arquivo.text).to eql 'upload.txt'

end

it 'upload com arquivo imagem' do
    attach_file('file-upload', @imagem)
    click_button 'Upload'
  img = find('#new-image')
  expect(img[:src]).to include '/uploads/upload_imagem.jpg'
 
 end

after(:each) do
    
end
end
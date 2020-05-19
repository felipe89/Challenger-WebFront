Dado("que clico em Fazer login") do
    @login = LoginPage.new
    @login.go
end
  
  Quando("eu preencher os campos obrigatórios") do 
    
    # Para executar o cenario abaixo é necessario adicioanr um novo email de login.

    fill_in 'email_create', :with => 'd@m.com.br'
    click_button 'Create an account'
    find('#uniform-id_gender1').click
    fill_in 'customer_firstname', :with => 'Automação'
    fill_in 'customer_lastname', :with => 'QaTeste'
    fill_in 'passwd', :with => 'Teste1234'
   
    select '30', from: 'days'
    select 'January', from: 'months'
    select '1986', from: 'years'
    fill_in 'firstname', :with => 'Nome Endereco Teste'
    fill_in 'lastname', :with => 'Sobrenome Nome Endereco Teste'
    fill_in 'address1', :with => 'Rua Cadastro User'
    fill_in 'city', :with => 'Alabama Cidade'

    select 'Alabama', from: 'id_state'
    fill_in 'postcode', :with => '35007'
    fill_in 'phone_mobile', :with => '866-234-5382'
    fill_in 'alias', :with => 'Alias Exemplo'
    click_button 'Register'
  end
  
  Então("meu registro será feito com sucesso") do
    page.has_content?('Welcome to your account. Here you can manage all of your personal information and orders.')
  end
  
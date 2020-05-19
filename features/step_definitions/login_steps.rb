Dado("que eu efetue o acesso a pagina principal") do
  @login = LoginPage.new
  @login.go
end

Quando("eu faço login com {string} e {string}") do |email, password|
  @login.faz_login(email,password)
end

Então("devo ser autenticado com sucesso") do
  expect(page).to have_content "My account"
end

Então("devo ver a seguinte mensagem {string}") do |alerta|
  expect(page).to have_content alerta
end

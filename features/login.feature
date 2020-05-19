#language:pt

Funcionalidade: Login 
Para que eu efetue acesso ao meu sistema e gerencie as minha atividades
Sendo um usuário
Posso acessar o sistema via email e senha cadastrado. 

Contexto: Acesso
    Dado que eu efetue o acesso a pagina principal

Cenario: Login usuario
    Quando eu faço login com "a@a.com.br" e "Teste1234"
    Então devo ser autenticado com sucesso 
    E devo ver a seguinte mensagem "My account"

Esquema do Cenario: Validação de login de usuário
    Quando eu faço login com "<email>" e "<senha>"
    E devo ver a seguinte mensagem "<alerta>"

Exemplos: 
    |email                      |senha          |alerta                     |
    |a@a.com.br                 |Teste1234      |My account                 |
    |test@automacao.com.br      |UserInvalid    |Authentication failed.     |
    |                           |               |An email address required. |
# language: pt
Funcionalidade: Login via Código de Confirmação por E-mail
  Como um usuário cadastrado no aplicativo Vibra Premmia
  Quero realizar o login usando meu CPF, senha e um código de confirmação enviado por e-mail
  Para garantir a segurança da minha conta através da autenticação em duas etapas

  Cenário: Login bem-sucedido usando validação por e-mail (OTP)
    Dado que eu abro o aplicativo Vibra Premmia com o estado limpo
    Quando eu clico em "Vamos começar?"
    E insiro o CPF "74873540089" no campo de login
    E clico em "Continuar"
    E insiro a senha de acesso "123456"
    E clico em "Continuar"
    E escolho o método de recebimento "E-mail" para o código de segurança
    Então devo ver a mensagem "Código de confirmação enviado para j*****a@sofist.co"
    Quando o código de confirmação (OTP) é obtido de forma integrada via API
    E insiro o código recebido no campo de validação
    E clico em "Continuar"
    Então o login deve ser realizado com sucesso e o aplicativo redirecionado à home

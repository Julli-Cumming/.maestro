# language: pt
Funcionalidade: Login via Código de Confirmação por SMS
  Como um usuário cadastrado no aplicativo Vibra Premmia
  Quero realizar o login usando meu CPF, senha e um código de confirmação enviado por SMS
  Para acessar minha conta de forma rápida e segura usando meu celular

  Cenário: Login bem-sucedido usando validação por SMS (OTP)
    Dado que eu abro o aplicativo Vibra Premmia com o estado limpo
    Quando eu clico em "Vamos começar?"
    E insiro o CPF "74873540089" no campo de login
    E clico em "Continuar"
    E insiro a senha de acesso "123456"
    E clico em "Continuar"
    E escolho o método de recebimento "SMS" para o código de segurança
    Então devo ver a mensagem "Código de confirmação enviado para (71)9****-7147"
    Quando o código de confirmação (OTP) é obtido de forma integrada via API para SMS
    E insiro o código recebido no campo de validação
    E clico em "Continuar"
    Então o login deve ser concluído e o acesso liberado para a tela principal

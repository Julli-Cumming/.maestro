# language: pt
Funcionalidade: Cadastro com Sucesso no Premmia
  Como um novo usuário do aplicativo Vibra Premmia
  Quero realizar o meu cadastro informando dados válidos
  Para ter acesso à conta e benefícios do programa de fidelidade

  Cenário: Cadastro de novo usuário realizado com sucesso
    Dado que eu abro o aplicativo Vibra Premmia com o estado limpo
    Quando eu clico em "Vamos começar?"
    E insiro o CPF "83141192022" válido para cadastro
    E avanço para a próxima etapa
    E preencho os dados pessoais com:
      | Nome           | Test Automation |
      | Sobrenome      | Maestro         |
      | Data de Nac.   | 13/07/1976      |
    E avanço para a próxima etapa
    E preencho o e-mail "testautomatio@gmail.com" e telefone "14998760000"
    E avanço para a próxima etapa
    E insiro a senha "123456" e confirmo "123456"
    E leio e concordo com os Termos e condições
    E aceito a Política de Privacidade e Aviso Complementar
    E avanço para a próxima etapa
    E escolho validar a conta através do "E-mail"
    E vejo a mensagem "Código de confirmação enviado para testautomatio@gmail.com"
    E informo o código de confirmação recebido por integração 111111
    Então eu devo confirmar o cadastro com sucesso

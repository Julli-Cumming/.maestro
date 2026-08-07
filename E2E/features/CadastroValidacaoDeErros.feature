# language: pt
Funcionalidade: Validação de Erros no Cadastro Premmia
  Como um novo usuário tentando se cadastrar no aplicativo Vibra Premmia
  Quero que o sistema valide as informações fornecidas e exiba mensagens de erro apropriadas
  Para corrigir dados inválidos antes de prosseguir

  Cenário: Tentativa de cadastro com dados inválidos em múltiplos campos
    Dado que eu abro o aplicativo Vibra Premmia com o estado limpo
    Quando eu clico em "Vamos começar?"
    
    # CPF Inválido
    E insiro o CPF "45897553000" inválido
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "CPF inválido."
    Quando eu limpo o campo e insiro o CPF "45897553009" válido
    E clico em "Continuar"
    
    # Nome e Sobrenome Inválidos
    E insiro o nome "F" inválido
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "Nome inválido"
    Quando eu corrijo o nome para "George Felipe"
    E insiro o sobrenome "h" inválido
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "Sobrenome inválido"
    Quando eu corrijo o sobrenome para "Santos"
    E clico em "Continuar"
    
    # Menor de Idade
    E insiro a data de nascimento "12092017" (menor de idade)
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "Você precisa ser maior de 18 anos para participar do Premmia"
    Quando eu corrijo a data de nascimento para "12091989"
    E clico em "Continuar"
    
    # E-mail Inválido
    E insiro o e-mail "george" inválido
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "E-mail inválido"
    Quando eu corrijo o e-mail para "georgefelipe@gmail.com"
    
    # Celular Inválido
    E insiro o celular "1498789098" inválido
    E clico em "Continuar"
    Então deve exibir a mensagem de erro "Celular inválido"
    Quando eu corrijo o celular para "14990909090"
    E clico em "Continuar"
    
    # Senhas curtas / inconsistentes
    E insiro a senha "12345" e confirmação "12345"
    Então deve exibir as validações "Ter 6 números" e "As senhas devem ser iguais"
    Quando eu corrijo a senha e confirmação para "123456"
    
    # Aceite de Termos e Políticas
    E concordo com os Termos e condições e as Políticas de Privacidade
    E clico em "Continuar"
    Então deve exibir a tela "Por onde você quer receber o código pra confirmar a conta?"
    
    # Fluxo de cancelamento da validação
    Quando eu escolho receber o código por "E-mail" e depois clico em "Cancelar"
    Então deve exibir a mensagem de confirmação de cancelamento
    Quando eu escolho "Voltar" na mensagem de cancelamento
    E digito um código de confirmação inválido "111234"
    E clico em "Continuar"
    Então deve exibir a mensagem "Código inválido"
    Quando eu limpo o campo e insiro o código de confirmação válido recebido via API
    Então a conta deve ser confirmada com sucesso

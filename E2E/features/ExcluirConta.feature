# language: pt
Funcionalidade: Exclusão da conta Premmia
  Como um usuário autenticado no aplicativo Vibra Premmia
  Quero solicitar a exclusão permanente da minha conta
  Para encerrar minha participação no programa Premmia

  Contexto:
    Dado que estou autenticado no aplicativo Vibra Premmia

  Cenário: Consultar os benefícios antes de iniciar a exclusão
    Quando acesso "Excluir conta" nas configurações do meu perfil
    Então devo ver a apresentação dos benefícios Premmia
    Quando escolho "Continuar"
    Então devo ver a tela "Exclusão da conta"
    E devo ver a pergunta "Por que você quer excluir?"
    E devo ver que o motivo é obrigatório

  Cenário: Cancelar a solicitação na confirmação
    Dado que acessei "Excluir conta" e avancei pela apresentação dos benefícios
    E estou na tela "Exclusão da conta"
    Quando seleciono o motivo "Não utilizo mais o App"
    E escolho "Salvar"
    Então devo ver a confirmação "Excluir conta permanentemente"
    E devo ser alertado de que a exclusão é permanente e remove meu acesso aos benefícios Premmia
    Quando escolho "Cancelar"
    Então devo voltar para a tela inicial sem excluir minha conta

  Cenário: Informar um motivo personalizado
    Dado que acessei "Excluir conta" e avancei pela apresentação dos benefícios
    E estou na tela "Exclusão da conta"
    Quando seleciono "Outro motivo"
    E informo o motivo da exclusão
    E escolho "Salvar"
    Então devo ver a confirmação "Excluir conta permanentemente"
    Quando escolho "Cancelar"
    Então devo voltar para a tela inicial sem excluir minha conta

  Cenário: Concluir a exclusão da conta com sucesso
    Dado que selecionei um motivo válido para excluir a conta
    E estou na confirmação "Excluir conta permanentemente"
    Quando confirmo a exclusão escolhendo "Salvar"
    E a solicitação é concluída com sucesso
    Então devo ver a mensagem "Sentiremos sua falta."
    E devo ver que a solicitação de exclusão foi concluída
    E devo seguir para o fluxo de onboarding
    E devo poder fechar o aplicativo

  Cenário: Tentar novamente quando a solicitação de exclusão falha
    Dado que selecionei um motivo válido para excluir a conta
    E estou na confirmação "Excluir conta permanentemente"
    Quando confirmo a exclusão escolhendo "Salvar"
    E a solicitação não é concluída
    Então devo ver a mensagem "Ops..."
    E devo poder escolher "Tentar novamente"

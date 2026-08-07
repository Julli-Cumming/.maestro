# language: pt
Funcionalidade: Mapa e Rota na Home do Premmia
  Como um usuário logado no aplicativo Vibra Premmia
  Quero visualizar o mapa de postos de combustível parceiros
  Para traçar rotas e iniciar pagamentos de forma integrada

  Cenário: Visualizar postos no mapa e interagir com opções de rota e pagamento
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando eu vejo os elementos da tela inicial carregados
    E clico em "Ver mapa"
    Então o mapa de postos deve ser exibido com sucesso
    Quando eu seleciono a opção de postos "Recentes"
    E clico em "Traçar rota"
    Então deve exibir o seletor de aplicativo com "Selecione um App"
    Quando eu fecho a tela de seleção de app
    E clico em "Pagar"
    Então a tela ou janela de pagamento do posto selecionado deve ser exibida
    Quando eu fecho a tela de pagamento
    E volto para a tela principal
    Então eu devo retornar à página inicial

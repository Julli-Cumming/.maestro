# language: pt
Funcionalidade: Visualização da Home e Saldo de Pontos
  Como um usuário ativo do aplicativo Vibra Premmia
  Quero visualizar meu saldo de pontos e informações de postos parceiros na home
  Para acompanhar meus benefícios e ofertas próximas

  Cenário: Visualizar o saldo de pontos e buscar postos próximos na home
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando a tela principal carregar
    Então devo ver o elemento "Saldo de pontos"
    Quando eu rolo a tela até visualizar o botão "Ver tudo"
    E clico em "Ver tudo"
    E retorno para o "Início"
    E rolo a tela para cima até visualizar a seção "Você está no posto"
    Então a mensagem "Você está no posto" deve estar visível com sucesso

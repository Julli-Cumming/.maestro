# language: pt
Funcionalidade: Menu Trocar
  Como um usuário autenticado no aplicativo Vibra Premmia
  Quero acessar o menu Trocar
  Para visualizar os produtos disponíveis para resgate de acordo com as categorias

  Contexto: Acessar a tela de Trocar
    Dado que estou logado no aplicativo Vibra Premmia com a sessão ativa
    Quando eu seleciono a opção "Trocar" na barra de navegação inferior

  Cenário: Visualizar produtos da seção Cupons Para Você
    Quando eu seleciono "Ver tudo" na seção "Cupons para você"
Então devo visualizar a listagem de todos os produtos disponíveis para resgate
E devo scrolar a tela até visualizar o ultimo produto
    E cada produto deve exibir o botão "Resgatar" destacado na cor verde

  Cenário: Explorar ofertas e cupons da seção BR Mania
Quando encontra a seção de BR Mania
E scrolar até visualizar o botão "Ver tudo"
E clicar no botão
Então na aba “Ofertas” vou scrollar para visualizar todos os produtos
    E mudo para a aba "Cupons"
Então devo visualizar os cupons de desconto disponíveis para a BR Mania
E clico em voltar para a tela principal de Trocar

  Cenário: Consultar parceiros de transferência de pontos na seção Viagens
    Quando eu seleciono "Ver tudo" na seção "Viagens"
    Então devo visualizar os produtos de resgate dos parceiros Latam Pass e Smiles
  Cenário: Visualizar produtos da seção Lubrax

    Quando eu seleciono "Ver tudo" na seção "Lubrax"
    Então devo visualizar todos os produtos e lubrificantes disponíveis para resgate
    
  Cenário: Consultar a seção de ajuda
    Quando eu acesso a seção "Precisando de ajuda?"
    E seleciono uma dúvida frequente
    Então a resposta correspondente deve ser exibida detalhadamente
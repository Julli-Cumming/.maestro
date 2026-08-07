# language: pt
Funcionalidade: Central de Ajuda e Suporte ao Usuário
  Como um usuário do aplicativo Vibra Premmia
  Quero navegar pela central de ajuda, contatos e perguntas frequentes (FAQ)
  Para tirar dúvidas sobre o funcionamento do programa e entrar em contato com o suporte

  Cenário: Navegação completa pelos canais de contato e FAQ na central de ajuda
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando eu clico no ícone de perfil no cabeçalho da home
    E rolo a página até encontrar e clicar em "Central de ajuda"
    Então devo ver as opções de suporte disponíveis
    Quando eu visualizo a opção de contato telefônico "Ligue para 4090-1337"
    E verifico as opções de contato por "WhatsApp" e "E-mail"
    E retorno para as dúvidas frequentes
    E seleciono a dúvida "Como funciona o Programa?"
    Então as informações de funcionamento do programa de fidelidade devem ser apresentadas
    Quando eu clico para fechar ou retornar
    Então devo poder voltar com segurança para as telas principais

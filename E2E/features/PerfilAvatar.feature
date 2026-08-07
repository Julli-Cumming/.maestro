# language: pt
Funcionalidade: Gerenciamento de Avatar no Perfil do Usuário
  Como um usuário autenticado no aplicativo Vibra Premmia
  Quero atualizar a foto do meu perfil/avatar nas configurações
  Para personalizar minha conta no aplicativo

  Cenário: Alterar e salvar um novo avatar de perfil com sucesso
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando eu clico no ícone de perfil no cabeçalho da home
    E clico no botão de editar avatar
    E seleciono um novo avatar disponível na lista
    E clico em "Salvar"
    E rolo a tela até a opção "Dev Menu"
    E retorno subindo a página até a seção de cupons vazios
    Então eu devo poder fechar a tela de perfil e retornar para a home

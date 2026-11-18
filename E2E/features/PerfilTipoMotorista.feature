# language: pt
Funcionalidade: Configuração e Alteração do Tipo de Motorista
  Como um usuário autenticado no aplicativo Vibra Premmia
  Quero definir e atualizar a minha categoria/tipo de motorista nas opções de perfil
  Para pontuar adequadamente e receber benefícios de acordo com a minha categoria

  Contexto: Acessar a tela de configurações do perfil
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando eu clico no ícone de perfil no cabeçalho da home
    E seleciono a opção de dados cadastrais
    E rolo a tela até exibir as configurações da conta

  Cenário: Definição inicial do Tipo de Motorista
    Dado que vejo o incentivo "Escolha e ganhe 200 pts"
    Quando eu clico para selecionar o tipo de motorista
    E escolho a opção "Motorista comum"
    E clico em "Confirmar"
    Então o tipo de motorista deve ser atualizado para "Motorista comum"

  Cenário: Alteração do Tipo de Motorista sem restrição
    Quando eu clico novamente para alterar o tipo de motorista
    E seleciono uma nova categoria disponível
    E clico em "Confirmar"
    Então a nova categoria deve ser confirmada com sucesso

  Cenário: Tentativa de alteração do Tipo de Motorista com restrição
    Quando eu tento alterar imediatamente para outra categoria
    E clico em "Confirmar"
    Então deve exibir a mensagem "Você já pediu a mudança do seu tipo de motorista antes. Aguarde até 3 dias para que a alteração seja concluída e tente novamente depois disso."
    Quando eu confirmo a mensagem de carência
    E retorno pelas telas anteriores
    Então devo voltar à tela inicial com sucesso

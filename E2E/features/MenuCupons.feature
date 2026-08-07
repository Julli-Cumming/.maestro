# language: pt
Funcionalidade: Gerenciamento e Ativação de Cupons
  Como um usuário do aplicativo Vibra Premmia
  Quero poder acessar a seção de cupons, inserir e ativar novos códigos promocionais
  Para aproveitar os descontos e parcerias disponíveis

  Cenário: Inserir e ativar um novo cupom com sucesso
    Dado que eu abro o aplicativo Vibra Premmia mantendo a sessão ativa
    Quando eu clico na aba de "Cupons"
    E clico no botão para "Inserir novo cupom"
    E digito o código do cupom "CUPOM_HML_08"
    E clico em "Ativar"
    E confirmo a ativação do cupom
    Então devo poder ver a lista de todos os meus cupons
    Quando eu seleciono o cupom ativo para ver a lista de uso
    E volto para o "Início" do aplicativo
    Então devo ser redirecionado para a home com a barra de navegação visível

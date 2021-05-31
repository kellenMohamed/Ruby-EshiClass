#language: pt

#Na Funcionalidade deve ser incluso o que pde no Jira (Story) de forma sucinta:
Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efeturar compras

@cadastro_dados_faker
Cenário: Cadastrar cliente com dados válidos aleatórios
Dado que acesso a página de login/cadastro
E solicito um novo cadastro para o email 'aleatório'
E preencho os campos do formulário com dados válidos aleatório
Quando confirmo o cadastro
Então devo ser direcionado à página de minha conta
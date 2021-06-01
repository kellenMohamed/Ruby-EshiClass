#language: pt

#Na Funcionalidade deve ser incluso o que pde no Jira (Story) de forma sucinta:
Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efeturar compras

@cadastro_dados_faker
Cenario: Cadastrar cliente com dados validos aleatorios
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'aleatorio'
E preencho os campos do formulario com dados válidos aleatorio
Quando confirmo o cadastro
Entao devo ser direcionado a pagina de minha conta
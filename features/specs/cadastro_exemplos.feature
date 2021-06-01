#language: pt

#Na Funcionalidade deve ser incluso o que pde no Jira (Story) de forma sucinta:
Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efeturar compras

@cadastro_exemplos
Esquema do Cenario: Cadastrar cliente com dados validos e fixos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email <email>
E preencho os campos do formulario com <gender>,<first_name>,<last_name>,<password>,<day>,<month>,<year>,<newsletter>,<company>,<address>,<city>,<zipcode>,<state>,<phone>,<address_name>
Quando confirmo o cadastro
Entao devo ser direcionado a pagina de minha conta

| email                             | gender    | first_name   | last_name | password  | day   | month     | year      | newsletter    | company   | address               | city          | zipcode | state       | phone             | address_name  |
|'imersao_ruby_fron4@guts.com.br'   | 'fem ''   | Kellen       | Mohamed   | '12345678'| '11' | 'April'    | '1985'    | 'no'          | 'TestABC' | 'Rua Piracanjuba, 17' | 'Piracicaba'  | '45632' | 'Alabama'   | '5516998456123'   | 'Casa'        |

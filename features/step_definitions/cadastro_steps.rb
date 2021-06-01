Dado('que acesso a pagina de login\/cadastro') do
  @app.cadastropage.load
end
  
Dado('solicito um novo cadastro para o email {string}') do |email|
  @app.cadastropage.iniciar_criacao_conta email
end
  
Dado('preencho os campos do formulario com dados validos fixos') do
  @app.cadastropage.preencher_form_com_dados_fixos
end
  
Quando('confirmo o cadastro') do
  @app.cadastropage.confirmar_cadastro
end
  
Dado('preencho os campos do formulario com dados validos aleatorios') do
  @app.cadastropage.preencher_form_com_dados_aleatorios
end

### Steps necessário para a Feature cadastro_exemplos, pois não aceitou o step 2 no início deste arquivo:
Dado('solicito um novo cadastro para o email <email>') do
  @app.cadastropage.iniciar_criacao_conta2(email)
end

#Step quando recebe valores nos exemplos: 
#Dado('preencho os campos do formulario com {string},{string},{string},{string},{string},{string},{string},{string},{string},{string},{string},{string},{string},{string},{string}') do |gender,first_name,last_name,password,day,month,year,newsletter,company,address,city,zipcode,state,phone,address_name|
#  @app.cadastropage.preencher_form_com_dados_de_exemplos(gender,first_name,last_name,password,day,month,year,newsletter,company,address,city,zipcode,state,phone,address_name)
#end

Dado ('preencho os campos do formulario com <gender>,<first_name>,<last_name>,<password>,<day>,<month>,<year>,<newsletter>,<company>,<address>,<city>,<zipcode>,<state>,<phone>,<address_name>')  do
  @app.cadastropage.preencher_form_com_dados_de_exemplos(gender,first_name,last_name,password,day,month,year,newsletter,company,address,city,zipcode,state,phone,address_name)
end

# Step criado para o feature cadastro_datafile: 
Dado('preencho os campos do formulario com dados validos padrao') do
  @app.cadastropage.preencher_form_com_dados_datafile
end

Entao('devo ser direcionado a pagina de minha conta') do
  #As assertions devem ser feitas dentro do Step:  
  #expect(@app.minhacontapage.acessou_minha_conta).to be_trutly
  expect(@app.cadastropage.page_title.text).to eq('MY ACCOUNT')
  expect(@app.cadastropage.account_name.text).to eq(@app.cadastropage.account_full_name)
end

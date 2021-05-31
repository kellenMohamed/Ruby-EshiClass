# Variáveis:
#@ = é uma variável de instância (ao terminar a execução do seu escopo ela deixa de existir.
#@@ = é uma variável de classe (fica disponível no ciclo de vida da classe)
#$ = é uma variável de escopo global (pode ser acessada de qualquer lugar do código).
#
class CadastroPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account'    
    #Mapear os elementos das telas:
    element :email_create_account_field,'#email_create'
    element :create_account_btn, '#SubmitCreate'
    element :title_fem_rd,'#id_gender2'
    element :first_name_field,'#customer_firstname'
    element :last_name_field,'#customer_lastname'
    element :password_field,'#passwd'
    element :days_select,'#days'
    element :month_select,'#months'
    element :year_select,'#years'
    element :newsletter_checkbox,'#newslatter'
    element :addres_field,'#address1'
    element :city_field,'#city'
    element :state_select,'#uniform-id_state'
    # Criando uma lista (para buscar os estados do selector acima):
    elements :state_option, '#uniform-id_state option'
    element :zip_code_field,'#postcode'
    element :mobile_phone,'#phone_mobile'
    element :addres_alias_field,'#alias'
    element :register_btn,'#submitAccount'

    # Implementar o método que foi chamado no step da cadastro_steps.rb
    # Inspecione a página do teste para saber o nome dos elementos.
    # Método para o step 2:
    def iniciar_criacao_conta(email)
        #Criar a ação para os elementos:
        # No comando abaixo com o set ele sabe que precisa pegar o valor do email aleatório:
        puts @email = email.eql?('aleatório') ? Faker::Internet.email(domain: 'guts') : email
        email_create_account_field.set email
        create_account_btn.click
    end

    # Método para o terceiro step, para preencher os valores na UI:
    def preencher_form_com_dados_fixos
        title_fem_rd.set true
        @@first_name = 'Kellen'
        @@last_name = 'Fernandez'
        first_name_field.set  @@first_name
        last_name_field.set @@last_name
        password_field.set '12345'
        days_select.select '9'
        month_select.select 'January'
        year_select.select '1986'
        newsletter_checkbox.click
        addres_field.set 'Street A'
        city_field.set 'São Carlos'
        state_select.click
        option = state_options.find {option| option.text.include?("Alabama")} 
        option.click
        zip_code_field.set '99345'
        mobile_phone.set '5516991565720'
        addres_alias_field.set 'home'
    end
    
    # Método para o terceiro step, para preencher os valores na UI com dados aleatórios:
    def preencher_form_com_dados_aleatorios
        @@first_name = Faker::Name.first_name
        @@last_name = Faker::Name.last_name
        title_fem_rd.set true
        first_name_field.set @@first_name
        last_name_field.set @@last_name
        password_field.setFaker::Internet.passwd(min_length: 5, max_length: 10, mix_case: true, special_character: true)
        days_select.select '9'
        month_select.select 'January'
        year_select.select '1986'
        newsletter_checkbox.click
        addres_field.set 'Street A'
        city_field.set 'São Carlos'
        state_select.click
        option = state_options.find {option| option.text.include?("Alabama")} 
        option.click
        zip_code_field.set '99345'
        mobile_phone.set Faker::PhoneNumber.cell_phone_in_e164
        addres_alias_field.set 'Home'
    end

    # Método para o step 4:
    def confirmar_cadastro
        register_btn.click
    end
    
    def account_full_name
        "#{@@first_name} #{@@last_name}"
    end

end    
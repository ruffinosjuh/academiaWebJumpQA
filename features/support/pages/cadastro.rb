class CadastroPage
    include Capybara::DSL
    include RSpec::Matchers

    def visitar
        visit("https://magento.nublue.co.uk/")
    end

    def criar_usuario
        click_link_or_button "Create"
    end

    def preencher_formulario_usuario
        numero = rand(9999)
        find(EL["campo_primeiro_nome"]).set Faker::Name.first_name
        find(EL["campo_segundo_nome"]).set Faker::Name.last_name 
        find(EL["campo_email"]).set Faker::Internet.email 
        find(EL["campo_senha"]).set "teste@123"
        find(EL["confirmacao_senha"]).set "teste@123"
        find(EL["botao_criar_conta"]).click
    end

    def menssagem_sucesso_cadastro
        expect(find(EL["menssagem_sucesso"]).text).to eql "Thank you for registering with Main Website Store."
    end
end
class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def preencher_formulario_entrega
        find(EL["campo_login"]).set "roni_cost@example.com"
        find(EL["senha_cliente"]).set "roni_cost3@example.com"
        find(EL["botao_fazer_login"]).click
        assert_no_selector(EL["carregando"])
        verifica_endereco = has_css?("input[name='firstname", wait:3)
        puts verifica_endereco
        if(verifica_endereco == true)
        find(EL["campo_nome"]).set Faker::Name.first_name
        find(EL["campo_segundo_nome2"]).set Faker::Name.last_name 
        find(EL["campo_rua"]).set "Av Paulista"
        find(EL["campo_cidade"]).set "São Paulo"
        find("option[value='BR']").click
        find("option[value='508']").click
        find(EL["campo_cep"]).set "11111-111"
        find(EL["campo_telefone"]).set "123456789"
        end
        first(EL["botao_entrega"]).click
        find(EL["botao_continuar"]).click
        find(EL["botao_finalizar_compra"]).click
        assert_no_selector(EL["carregando"])
    end

    def mensagem_pedido_finalizado
        expect(find(EL["menssagem_finalizacao"]).text).to eql "Thank you for your purchase!"
    end
end
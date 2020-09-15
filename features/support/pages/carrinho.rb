class CarrinhoPage
    include Capybara::DSL
    include RSpec::Matchers

    def finaliza_carrinho
        assert_selector(EL["numero_produtos_carrinho"], visible: true)
        #assert_no_selector(".loader")
        sleep 1
        find(EL["icone_carrinho"]).click
        find(EL["botao_finalizar_compra"]).click
        assert_no_selector(EL["carregando"])
    end
end
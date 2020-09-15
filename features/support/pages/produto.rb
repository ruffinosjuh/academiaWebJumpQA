class ProdutoPage
    include Capybara::DSL
    include RSpec::Matchers

    def adicionar_produto_carrinho
        find(EL["tamanho_produto"]).click
        find(EL["cor_produto"]).click
        find(EL["botao_adicionar_carrinho"]).click
        assert_selector(EL["menssagem_sucesso"], visible: true)
    end

    def msg_produto_adicionado_carrinho(msg_produto_adicionado_carrinho)
        expect(find(EL["menssagem_sucesso"]).text).to eql msg_produto_adicionado_carrinho
    end
end

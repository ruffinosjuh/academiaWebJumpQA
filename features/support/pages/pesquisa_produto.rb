class PesquisaPage
    include Capybara::DSL
    include RSpec::Matchers

    def inserir_produto(sku)
        find(EL["campo_pesquisa"]).set sku
        find(EL["botao_pesquisa"]).click
    end

    def verificar_resultado_busca(nome_produto)
        expect(find(EL["produto_pesquisado"]).text).to eql nome_produto 
    end

    def acessar_produto
        find(EL["produto_pesquisado"]).click
    end

end
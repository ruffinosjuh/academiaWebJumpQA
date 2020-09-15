
  Dado('que quero buscar um produto especifico') do
  end
  
  Quando('insiro SKU {string} na barra de pesquisa') do |sku|
    @pesquisa.inserir_produto(sku)
  end
  
  Então('verifico que o resultado da busca retornou o produto {string}') do |nome_produto|
    @pesquisa.verificar_resultado_busca(nome_produto)
  end

  Dado("que eu pesquise e acesse o produto com o SKU {string}") do |sku|
    steps %{
      Quando insiro SKU "#{sku}" na barra de pesquisa
    }
    @pesquisa.acessar_produto
  end

  Dado("que pesquisei e adicionei um produto no carrinho") do
    steps %{
      Dado que eu pesquise e acesse o produto com o SKU "MH07"
      Quando adicionar esse produto ao carrinho
    }
  end
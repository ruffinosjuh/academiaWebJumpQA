Quando("adicionar esse produto ao carrinho") do
    @produto.adicionar_produto_carrinho
  end

  Então("espero que o produto seja adicionado no carrinho e a mensagem {string} exibida") do |msg_produto_adicionado_carrinho|
    @produto.msg_produto_adicionado_carrinho(msg_produto_adicionado_carrinho)
  end
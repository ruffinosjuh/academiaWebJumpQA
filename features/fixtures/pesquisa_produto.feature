#language: pt

Funcionalidade: Busca de produtos

    Contexto: 
    Dado a tela inicial do Luma 
    
    @busca
    Cenário: Buscar um produto pelo SKU
    Dado que quero buscar um produto especifico
    Quando insiro SKU "MH07" na barra de pesquisa
    Então verifico que o resultado da busca retornou o produto "Hero Hoodie"

    @adicionar
    Cenário: Buscar e adicionar um produto no carrinho
    Dado que eu pesquise e acesse o produto com o SKU "MH07"
    Quando adicionar esse produto ao carrinho
    Então espero que o produto seja adicionado no carrinho e a mensagem "You added Hero Hoodie to your shopping cart." exibida

    @finalizar 
    Cenário: Finalizar compra
    Dado que pesquisei e adicionei um produto no carrinho
    Quando acessar o carrinho e finalizar a compra
    E insiro as informações de entrega e pagamento
    Entao espero que a compra seja finalizada e a mensagem "Thank you for your purchase!" exibida.
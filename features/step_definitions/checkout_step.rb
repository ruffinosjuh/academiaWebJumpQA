  Quando("insiro as informações de entrega e pagamento") do
    @checkout.preencher_formulario_entrega
  end
  
  Entao("espero que a compra seja finalizada e a mensagem {string} exibida.") do |string|
   @checkout.mensagem_pedido_finalizado
  end
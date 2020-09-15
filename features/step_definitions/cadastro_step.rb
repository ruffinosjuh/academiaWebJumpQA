Dado('a tela inicial do Luma') do
    @cadastro.visitar
  end
  
  Dado('seleciono para fazer cadastro') do
    @cadastro.criar_usuario
  end
  
  Quando('preencho os campos com informacoes pessoais e de acesso') do
    @cadastro.preencher_formulario_usuario
  end
  
  Então('espero que o cadastro seja efetuado com sucesso.') do
    @cadastro.menssagem_sucesso_cadastro
  end
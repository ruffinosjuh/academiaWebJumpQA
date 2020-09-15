#language: pt
@cadastro
Funcionalidade: cadastramento de novos usuario

    Cenario: cadastrando usuario
    Dado a tela inicial do Luma
    E seleciono para fazer cadastro
    Quando preencho os campos com informacoes pessoais e de acesso
    Então espero que o cadastro seja efetuado com sucesso.
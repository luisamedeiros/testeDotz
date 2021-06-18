#language: pt

@films
Funcionalidade: Title
    validar campo 'title' da estrutura results

    @get_title
    Cenário: Fazer GET title
Quando faco uma requisição GET para o servico films
E o servico retornar status 200
Então retorna a lista de titulos
#language: pt

@planets
Funcionalidade: Count
    validar campo 'count' do serviço planets

    @get_count
    Cenário: Fazer GET count
Quando faco uma requisição GET para o servico planets
Então retorno o valor 60 em count

    @get_status
    Cenário: Fazer GET count
Quando faco uma requisição GET para o servico planets
E insiro valor 70 em count
Então valido status code 200 e mensagem
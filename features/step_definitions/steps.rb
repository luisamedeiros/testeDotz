Quando('faco uma requisição GET para o servico films') do
    @request_films = films.get_films
end

Então('o servico retornar status {int}') do |status_code|
    expect(@request_films.code).to eq status_code
end

Então('retorna a lista de titulos') do
    
title = {1 => " A New Hope", 2 => " The Empire Strikes Back", 3 => " Return of the Jedi", 4 => " The Phantom Menace", 5 => " Attack of the Clones", 6 => " Revenge of the Sith"}

    title.each do |title|
    puts "título " + title[0].to_s + title[1]
    end
      
end

Quando('faco uma requisição GET para o servico planets') do
    @request_planets = films.get_planets
end
  
Então('retorno o valor {int} em count') do |count|
    valor_count = count
    expect(@request_planets.parsed_response["count"]).to eq count
           
end
  
Quando('insiro valor {int} em count') do |count_incorreto|
    expect(@request_planets.parsed_response["count"]).to eq count_incorreto
    puts count_incorreto
end
  
Então('valido status code {int} e mensagem') do |status_code|
    expect(@request_planets.code).not_to eq status_code
    expect(@request_planets.message).not_to be_empty

    end


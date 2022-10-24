Dado('o endereço da API para consulta') do
    #
end
  
Quando('realizo uma requisição para filtrar os tipos de estabelecimento') do    
    $response = HTTParty.get($uri_base)   
end
  
Então('a API deve retornar os dados de acordo com o filtro informado e o código {int}') do |int|
    expect($response.code).to eq(int)
    @teste = "response body #{$response.body}"
    expect(@teste["typeOfEstablishment"]["name"]) == ('PIZZARIA')
end
  
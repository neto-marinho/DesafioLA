#language: pt

Funcionalidade: Visualizar os dados da API Portal Visualizar
Como usuarios do sistema
Quero realizar consulta na API
A fim de filtrar as informações que retorna na API

Cenário: Consultar o tipo de estabelecimento
    Dado o endereço da API para consulta
    Quando realizo uma requisição para filtrar os tipos de estabelecimento
    Então a API deve retornar os dados de acordo com o filtro informado e o código 200
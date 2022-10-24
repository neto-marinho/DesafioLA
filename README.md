# DesafioLA

Frontend:
- Criar uma automação que entre no site www.vr.com.br;
- Navegar até́a seção “Pra Você̂” (/onde-aceita.htm);
- Clicar no botão “Onde usar meu cartão VR”;
- Validar que o mapa do Google abriu em tela. 

Backend:
Temos um endpoint de consulta exposto no nosso portal que nos retorna uma série de informações sobre
nossos produtos e estabelecimentos.
(https://portal.vr.com.br/api-web/comum/enumerations/VRPAT)
Crie um cenário, utilizando Cucumber + Ruby + HTTParty, que valide que o JSON retornado pelo serviço
possui a chave “typeOfEstablishment” e print, aleatoriamente, um desses tipos de estabelecimentos.

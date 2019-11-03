Dado("que o cliente possue todos os dados necessários para criação do empréstimo") do
    #Dados para executar API
    include HTTParty
    base_uri "www.urlficticia.com.br/api/v1/emprestimos"
    headers "Content-Type" => "application/json"

end

Dado("possue um token válido para se comunicar com o serviço") do
    #pegando o token que já foi buscado na classe ApiToken dentro da pasta services
    ApiToken.new.self.token
end

Quando("envio todos os dados para o serviço de criação de empréstimo") do
    #Realizando um post passando o endpoint, token e as informações necessárias
    response = HTTParty.post(base_uri, ApiToken.self.token, body => {nome:"Geru", cpf:"08723454432", 
        vl_emprestimo:"100", nr_parcelas:"2", vl_parcelas:"50"})
end

Então("o serviço deve criar o empréstimo com sucesso") do
#Verificando se o status foi igual a 200 e logo após imprimindo o body e o code
  expect(response.code).to eql "200"
  puts "response body #{response.body}"
  puts "response code #{response.code}"
end
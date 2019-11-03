Dado("que o cliente tem um empréstimo criado") do
        #Dados para executar API
        include HTTParty
        base_uri "www.urlficticia.com.br/api/v1/emprestimos/"
        headers "Content-Type" => "application/json"
  end
  
  Dado("possue um token válido para se comunicar com o serviço") do
        #Token já está sendo passado na funcão abaixo
  end
  
  Quando("o client consultar o serviço de empréstimo informando o ID do empréstimo") do
      #Função sendo chamada dentro da pasta services, to fazendo um get buscando pelo id e status e passando o token  
      response = getID.self.find
  end
  
  Então("o serviço deve me retornar as informações do empréstimo criado") do
  #Verificando se o status foi igual a 200 e logo após imprimindo o body e o code
  expect(response.code).to eql "200"
  puts "response body #{response.body}"
  puts "response code #{response.code}"
  end
  

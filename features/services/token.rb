class ApiToken
    include HTTParty
    base_uri "www.urlficticia.com.br"
    headers "Content-Type" => "application/json"



    def self.token(username, password)
        #Estou fazendo um post na API para ter o retorno do token e salvando na variável result
        result = post("/api/v1/token", body: {username: 'Test Geru', password: '123' }.to_json)
        #Estou concatenando com o token que está dentro do result
        "Bearer #{result.parsed_response["token"]}"    
    end





end
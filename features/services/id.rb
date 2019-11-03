class getID
    include HTTParty
    base_uri "www.urlficticia.com.br"
    headers "Content-Type" => "application/json"

    def self.find(id_emprestimo, status)
        get("/api/v1/emprestimos/#{id-emprestimo}", ApiToken.self.token, status)
        
    end


end
#language: pt
Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário

Cenário: Criar empréstimo
    Dado que o cliente possue todos os dados necessários para criação do empréstimo
	E possue um token válido para se comunicar com o serviço
    Quando envio todos os dados para o serviço de criação de empréstimo
	Então o serviço deve criar o empréstimo com sucesso
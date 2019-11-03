#language: pt
Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário


Cenário: Consultar empréstimo
    Dado que o cliente tem um empréstimo criado
	E possue um token válido para se comunicar com o serviço
   Quando o client consultar o serviço de empréstimo informando o ID do empréstimo
   Então o serviço deve me retornar as informações do empréstimo criado    
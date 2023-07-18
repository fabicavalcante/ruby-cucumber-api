	# language: pt

	Funcionalidade: Pet	
	
	Cenario: POST criação do pet
	Dado que eu tenha o endpoint pet
	Quando Eu realizar um POST para criação do pet
	Então terei o status code 200
	E a categoria "Doguinho" criada
# language: pt

Funcionalidade: Users	
	
	Cenario: POST criação do usuario
	Dado que eu tenha o endpoint user
	Quando Eu realizar um POST para criacao do usuario
	Então terei o status code 200
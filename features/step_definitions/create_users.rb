  Dado('que eu tenha o endpoint user') do
    @payload = YAML.load_file("#{PATH_PAYLOADS}petstore.yml") 
    @body = @payload['criauser']
  end
  
  Quando('Eu realizar um POST para criacao do usuario') do
    @response_body = user.cadastrar_user_post(@body)
    puts @response_body
  end

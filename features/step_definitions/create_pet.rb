Dado('que eu tenha o endpoint pet') do
  @payload = YAML.load_file("#{PATH_PAYLOADS}petstore.yml") 
  @body = @payload['criapet']
end
  
Quando('Eu realizar um POST para criação do pet') do
  @response_body = pet.cadastrar_pet_post(@body)
  puts @response_body
end

Então('terei o status code {int}') do |int|
  expect(@response_body.code).to eql(int)
end

Então('a categoria {string} criada') do |string|
  expect(@response_body['category']['name']).to eql(string)
end
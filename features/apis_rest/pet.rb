module ApiPet
  class RestPet
    include HTTParty
      
    headers 'Content-Type' => 'application/json'
  
    base_uri URL[AMBIENTE] + ENDPOINT['criar_pet']
  
    def cadastrar_pet_post(body)
      response = self.class.post('/', body: JSON.pretty_generate(body), :verify => false)
    end
  end
end
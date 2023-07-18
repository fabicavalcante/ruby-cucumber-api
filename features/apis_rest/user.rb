module ApiUser
  class RestUser
    include HTTParty
    
    headers 'Content-Type' => 'application/json'

    base_uri URL[AMBIENTE] + ENDPOINT['criar_user']

    def cadastrar_user_post(body)
      response = self.class.post('/', body: JSON.pretty_generate(body), :verify => false)
    end
  end
end
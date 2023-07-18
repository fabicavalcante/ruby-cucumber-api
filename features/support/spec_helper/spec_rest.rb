module INSTANCIAS
     def pet
       ApiPet::RestPet.new
     end
     def user
        ApiUser::RestUser.new
      end
   end
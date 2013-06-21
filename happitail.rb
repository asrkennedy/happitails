class Happitail

attr_accessor :available_animals, :clients

def initialize
  @available_animals = {}
  @clients = {}
end

def do_adopt (client_name, pet_name)
   @clients[client_name].pets[pet_name] = @available_animals.delete(pet_name)
end

def receive_abandon (client_name, pet_name)
    @available_animals[pet_name] = @clients[client_name].pets.delete(pet_name)
end

end

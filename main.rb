require 'pry'

require_relative 'client'
require_relative 'happitail'
require_relative 'animal'

h = Happitail.new

a1 = Animal.new "Fido", 3, "dog", :male, "a ball"
a2 = Animal.new "Jojo", 1, "dog", :female, "a ball"
a3 = Animal.new "Sassy", 5, "cat", :female, "a stuffed bear"
a4 = Animal.new "Molly", 8, "cat", :female, "a ball of yarn"
a5 = Animal.new "Champ", 2, "cat", :male, "a ball of yarn"
a6 = Animal.new "Psycho", 38, "cat", :female, "her claws"

[a1, a2, a3, a4, a5, a6].each do |animal|
  h.available_animals[animal.name.downcase.sub(' ', '').to_sym] = animal
end

c1 = Client.new "John", 52, :male, 0, 0
c2  = Client.new "Alexis", 26, :female, 3, 0
c3 = Client.new "Stuart", 33, :male, 1, 0

[c1, c2, c3].each do |client|
  h.clients[client.name.downcase.to_sym] = client
end

binding.pry



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

def menu
  puts `clear`
  puts "Welcome to the Happitail Animal Shelter!"
  puts "Type in the number of what action you would you like to do?"
  puts "1) List animals for adoption'"
  puts "2) List shelter's client names"
  puts "3) Adopt an animal"
  puts "4) Return an animal"
  puts "q) quit"
  gets.chomp.downcase
end

response = menu

while response != "q"
  case response
  when "1"
    puts h.available_animals.keys.join(", ")
    puts "Press enter to return to the menu"
  when '2'
    puts h.clients.keys.join(", ")
    puts "Press enter to return to the menu"
  when '3'
    puts "Which client are you?"
    puts h.clients.keys.join(", ")
    client_name = gets.chomp.to_sym
    puts "What pet would you like to adopt?"
    puts h.available_animals.keys.join(", ")
      adopt_pet = gets.chomp.to_sym
      h.do_adopt (client_name), (adopt_pet)
    puts "You have now adopted a pet!"
    puts "Press enter to return to the menu"

  when '4'
    puts "Which client are you?"
    puts h.clients.keys.join(", ")
    client_name = gets.chomp.to_sym
    puts "What pet would you like to abandon?"
    puts h.clients[client_name].pets.keys.join(", ")
      abandon_pet = gets.chomp.to_sym
      h.receive_abandon (client_name.to_sym), (abandon_pet)
    puts "You have now abandoned a pet :("
      puts "Press enter to return to the menu"
  end

  gets
  response = menu

end



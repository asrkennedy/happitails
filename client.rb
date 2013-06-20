class Client

  attr_accessor :name, :age, :gender, :kids, :pets, :adopt, :abandon

  def initialize (name, age, gender, kids, pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = {}
  end

  def to_s
    "#{name.upcase} is #{gender}, #{age} years old, has #{kids} kids, and #{pets.size} pets."
  end

end

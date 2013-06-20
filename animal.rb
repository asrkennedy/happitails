
class Animal

  attr_accessor :name, :age, :breed, :gender, :toy

  def initialize (name, age, breed, gender, toy)
      @name =name
      @age =age
      @breed =breed
      @gender =gender
      @toy = toy
  end

  def to_s
    "#{name} is a #{gender} #{breed}, is #{age}, and likes to play with #{toy}."
  end
end

class Owner
 attr_reader :name , :species 
 @@all=[]
 
 def initialize(name)
   @name = name 
   @species = "human"
   @@all << self
   @@dogs = []
   @@cats =[]
 end 
 
 def say_species
   "I am a #{@species}."
 end
 
def self.all 
  @@all
end 

def self.count
  @@all.count 
end 
 
 def self.reset_all
   @@all.clear
 end
 
   def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|cat| cat.owner == self}
  end
  
  def buy_cat(name) 
    @@cats << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @@dogs << Dog.new(name, self)
  end
  
  def walk_dogs 
    Dog.all.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats 
    Cat.all.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets 
    Cat.all.each do |cat|
      cat.mood = "nervous" 
      cat.owner = nil
    Dog.all.each do |dog|
      dog.mood = "nervous" 
      dog.owner = nil
     end
    end
  end
  
  def list_pets 
    "I have #{@@dogs.count} dog(s), and #{@@cats.count} cat(s)."
  end
end


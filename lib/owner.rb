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

end
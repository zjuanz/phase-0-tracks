class Puppy

  def initialize
    puts "Intializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
   # puts "Woofs".times(int)
    puts "Woof! "*int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age * 7
  end

  def eat_cat
    puts "Meoouch"
  end

  def dinner_time
 #   puts "Thanks ! only #{meals} meals left"
 #   meals-=1
  end

end

fido=Puppy.new
p fido.fetch("bone")
p fido.speak(3)
p fido.roll_over
p fido.dog_years(4)
p fido.eat_cat
p fido.dinner_time


class Gymnast
  def initialize
    puts " initialzing" 
  end
  def flip
    puts "*flips*"
  end
  def jump
    puts "*jumps"
  end
end

array=[]
count=0
while count<50
  array<<Gymnast.new
  count+=1
end

array.each do |g|
  g.flip
  g.jump
end
#
# Santa class
#
class Santa
  def speak
    puts "Ho,ho,ho! Haaaappy holidays!"
  end  
  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}"
  end
  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender=gender
    @ethnicity=ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", 
      "Dancer", "Prancer", "Vixen", "Comet", 
      "Cupid", "Donner", "Blitzen"]
    @age=0
  end
end

s=Santa.new("female","hispanic")
s.speak
s.eat_milk_and_cookies("Brownie")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |s|
  p s
end
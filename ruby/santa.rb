#
# Santa class
#
class Santa
  attr_reader :gender,:ethnicity,:reindeer_ranking,:age
  attr_accessor :gender
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
  def celebrate_birthday
    @age+=1
  end
  def get_mad_at (rname)
    # move rname reindeer to last
    @reindeer_ranking.delete(rname)
    @reindeer_ranking<<rname

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
  puts  "#{s.gender}:#{s.ethnicity}:#{s.age}:#{s.reindeer_ranking[-1]}"
  s.celebrate_birthday
  s.get_mad_at("Vixen")
  puts  "#{s.gender}:#{s.ethnicity}:#{s.age}:#{s.reindeer_ranking[-1]}"
end
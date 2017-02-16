puts "How many employees are there ?"
employees=gets.chomp.to_i
for i in 1..employees do
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
  garlic = gets.chomp
  puts "Would you like to enroll in the company's health insurance?(y/n)"
  insurance = gets.chomp

  p name, age, birth_year, garlic, insurance

  probably_not_a_vampire=false;
  if ((2017-birth_year-age).abs<=1) && ((garlic=="y") || (insurance=="y"))
    probably_not_a_vampire=true;
  end
  probably_a_vampire=false
  if ((2017-birth_year-age).abs>1) && ((garlic=="n") || (insurance=="n"))
    probably_a_vampire=true
  end
  almost_certainly_a_vampire=false
  if (((2017-birth_year-age).abs>1) && (garlic=="n") && (insurance=="n"))
    almost_certainly_a_vampire=true
  end
  definitely_a_vampire=false
  if name=="Drake Cula" || name=="Tu Fang"
    definitely_a_vampire=true
  end

  allergies=""
  while allergies!="done"
    puts "Please list any allergies. Use \"done\" when finished."
    allergies=gets.chomp
    if allergies=="sunshine"    
      probably_a_vampire=true;
      break;
    end
  end
  case 
  when definitely_a_vampire
    puts "Definitely a vampire"
  when almost_certainly_a_vampire
    puts "Almost certainly a vampire"
  when probably_a_vampire
    puts "Probably a vampire"
  when probably_not_a_vampire
    puts "Probably not a vampire"
  else
    puts "Results inconclusive"
  end
end   
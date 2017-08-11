puts "How many employees today?"
employees = gets.chomp
employees = employees.to_i

while employees >= 1

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
  age = age.to_i

  puts "What year were you born?"
  year = gets.chomp
  year = year.to_i

  puts "Would you like garlic bread?"
  garlic = gets.chomp
  if garlic = 'y' || 'Y' || 'yes' || 'Yes'
    garlic = true
  else
    garlic = false
  end

  puts "Would you like to enroll in the company health insurance?"
  insurance = gets.chomp
  if insurance = 'y' || 'Y' || 'yes' || 'Yes'
    insurance = true
  else
    insurance = false
  end

  put "Please enter allergies (one at a time). Enter 'done' when finished."
  allergy = gets.chomp
  until allergy == 'done'
    put "Please enter additional allergies."
    allergy = gets.chomp
  end



  current_year = 2017

  def age_right(current_year, year, age)
    calc_age = (current_year - year)
    if calc_age == age
      age_right = true
    else
      age_right = false
    end
  end

  age_right(current_year, year, age)

  if name == "Drake Cula"
    puts "Definitely a vampire."
  elsif name == "Tu Fang"
    puts "Definitely a vampire."
  elsif age_right(current_year, year, age) && garlic && insurance
    puts "Probably not a vampire."
  elsif !(age_right(current_year, year, age)) && (garlic || insurance)
    puts "Probably a vampire."
  elsif !(age_right(current_year, year, age) &&  garlic && insurance)
    puts "Almost certainly a vampire."
  else
    puts "Results inconclusive"
  end

  employees -= 1
end
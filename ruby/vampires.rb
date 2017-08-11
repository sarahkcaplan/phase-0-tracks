puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp


puts "What year were you born?"
year = gets.chomp


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

current_year = 2017
year = year.to_i
age = age.to_i

def age_right(current_year, year, age)
  calc_age = (current_year - year)
  if calc_age == age
    age_right = true
  else
    age_right = false
  end
end

age_right(current_year, year, age)

if age_right && garlic && insurance
  puts "Probably not a vampire."
elsif !(age_right) && !(garlic || insurance)
  puts "Probably a vampire."
elsif !(age_right && garlic && insurance)
  puts "Almost certainly a vampire."
elsif name = "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive"
end


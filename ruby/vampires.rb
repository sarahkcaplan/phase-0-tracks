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
if garlic = 'y' || 'Y' || 'yes'
  garlic = true
else
  garlic = false
end

puts "Would you like to enroll in the company health insurance?"
insurance = gets.chomp
if insurance = 'y' || 'Y' || 'yes'
  insurance = true
else
  insurace = false
end

current_year = 2017
p current_year
p year
p age

# def age_right(current_year, year, age)
#   calc_age = (current_year - year)
#   if calc_age == age
#   end
# end

# age_right(current_year, year, age)
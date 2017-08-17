puts "Client's name:"
name = gets.chomp

puts "Client's age:"
age = gets.to_i

puts "Have children?(true/false):"
children = gets.to_i

puts "Decore theme:"
theme = gets.chomp

puts "Color scheme:"
colors = gets.to_a
puts.colors
puts colors.class







# PSEUDOCODE
# -Ask user for information
#   -Use question as key for hash
# -Store information in variables
# -Create a hash with keys and variables
# -Print out the hash
# -Ask user if any keys need to be updated
# -If user input is "none"
#   -Print hash to the screen
#   -Break
# -Else turn input into symbols
#   -Use interpolation to allow correct key to be updated
#   -Update hash
#   -Print the updated hash to the screen
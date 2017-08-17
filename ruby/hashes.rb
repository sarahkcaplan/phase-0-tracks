puts "Client's name:"
name = chomps.get

puts "Client's age:"
age = chomps.get

puts "Have children?(true/false):"
children = chomps.get

puts "Decore theme:"
theme = chomps.get

puts "Color scheme:"
colors = chomps.get







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
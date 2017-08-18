# Client questions
puts "Client's name:"
name = gets.chomp

puts "Client's age:"
age = gets.to_i
puts age.class

puts "Have children?(true/false):"
children = gets.chomp
  if children == "true"
    children = true
  else children == "false"
    children = false
  end
puts children.class

puts "Decor theme:"
theme = gets.chomp

# Print hash for designer to see
client = {client_name: name, client_age: age, has_child: children, decor_theme: theme}
puts client

puts "Anything you'd like to change?"
response = gets.chomp
if response == "none"
  puts client
else
  response
  # take response
  # turn it into usable for a key
  # update value with a new value entered by user
end






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
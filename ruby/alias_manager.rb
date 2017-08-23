# PSEUDOCODE
# -Turn name into an array
# - Reverse the items in the array
# - List each letter in the names
# - For each letter in 'aeiou' letter.next
# - For each letter in 'bcdfghjklmnpqrstvxyz' letter.next

def name_scramble()
  puts "Please enter a name."
  real_name = gets.chomp
  name_array = real_name.split(' ')
  last_first = name_array.reverse
  last = last_first[0].chars
  first = last_first[1].chars
  scrambled_last = []
  scrambled_first = []
  scrambled_name = []
  last.each {|l| scrambled_last << l.next}
  first.each {|l| scrambled_first << l.next}
  last_string = ""
  first_string = ""
  scrambled_last.each {|l| last_string += l}
  scrambled_first.each {|l| first_string += l}
  agent_name = last_string + " " +first_string
  return an_agent = {agent_name => real_name}
end


def store_agent_name()
  list_of_agents = []
  index = 0
  while index < 3
    list_of_agents << name_scramble()
    index += 1
  end
  return list_of_agents
end

puts store_agent_name()
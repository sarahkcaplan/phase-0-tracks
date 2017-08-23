# PSEUDOCODE
# -Turn name into an array
# - Reverse the items in the array
# - List each letter in the names
# - For each letter in 'aeiou' letter.next
# - For each letter in 'bcdfghjklmnpqrstvxyz' letter.next

def name_scramble()
  real_name = ""
  agent_list = []
  puts "Please enter a name."
  real_name = gets.chomp
  if real_name != "quit"
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
    an_agent = {agent_name => real_name}
    puts an_agent
    agent_list << agent_name
  else
    return agent_list
  end
end

def use_scrambler()
  real_name = ""
  while real_name != "quit"
    puts name_scramble()
  end
end

puts use_scrambler()

# def store_agent_name()

#   index = 0
#   while index <
#     list_of_agents << name_scramble()
#     index += 1
#   end
#   return list_of_agents
# end

# puts store_agent_name()
# PSEUDOCODE
# -Turn name into an array
# - Reverse the items in the array
# - List each letter in the names
# - For each letter in 'aeiou' letter.next
# - For each letter in 'bcdfghjklmnpqrstvxyz' letter.next

def name_scramble()
  real_name = ""
  agent_list = []
  if real_name != "quit"
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
    an_agent = {agent_name => real_name}
    agent_list.insert(-1, an_agent)
  elsif real_name == "quit"
    puts "Ok...done."
    return agent_list
  else
    puts "Did not understand imput."
  end
end



# def use_scrambler()
#   real_name = ""
#   agent_history = []
#   while real_name != "quit"
#     an_agent = name_scramble()
#     puts an_agent
#   end
# end

# puts use_scrambler()

# def store_agent_name()
#   list_of_agents = []
#   index = 0
#   while index <
#     list_of_agents << name_scramble()
#     index += 1
#   end
#   return list_of_agents
# end

# puts store_agent_name()
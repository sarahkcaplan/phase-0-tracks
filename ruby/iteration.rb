# # Release 0

# def hungry
#   puts "Are you hungry?"
#   yield ("eggs")
# end

# hungry { |food| puts "Same here. I want to eat #{food}"}

# Relase 1

colors = ['blue', 'green', 'yellow', 'red']

months = {'birthday' => 'October', 'favorite' => 'June', 'worst' => 'February'}

puts "Before .map:"
p colors

colors.map do |color|
  color.next
end

puts "After .map:"
p colors

puts "Before .map!:"
p colors

colors.map! do |color|
  color.next
end

puts "After .map!:"
p colors

puts "Array with each:"
colors.each {|color| puts color}

puts "Hash with each:"
exi
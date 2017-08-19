# # Release 0

# def hungry
#   puts "Are you hungry?"
#   yield ("eggs")
# end

# hungry { |food| puts "Same here. I want to eat #{food}"}

# Relase 1

# colors = ['blue', 'green', 'yellow', 'red']

# months = {'birthday' => 'October', 'favorite' => 'June', 'worst' => 'February'}

# puts "Before .map:"
# p colors
# colors.map do |color|
#   color.next
# end

# puts "After .map:"
# p colors

# puts "Before .map!:"
# p colors

# colors.map! do |color|
#   color.next
# end

# puts "After .map!:"
# p colors

# puts "Array with each:"
# colors.each {|color| puts color}

# puts "Hash with each:"
# months.each {|title, month| puts "#{month} is the #{title} month."}

# Release 2

# array2 = [2, 4, 6, 8]
# puts "Before delete"
# p array2

# array2.delete_if { |number| number <= 4}

# puts "After delete"
# p array2

# hash2 = {"even"=>2, "odd"=>3}
# puts "Before filter"
# p hash2

# array3 = hash2.values_at("even")
# puts "After filter"
# p array3

array4 = ['yes', 'no', 'maybe']
puts "Before filter"
p array4

array4.include?("no")
puts "After filter"
p array4
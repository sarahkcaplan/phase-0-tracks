# Release 0

def hungry
  puts "Are you hungry?"
  yield ("eggs")
end

hungry { |food| puts "Same here. I want to eat #{food}"}

# Relase 1

colors = ['blue', 'green', 'yellow', 'red']

months = {'birthday' => 'October', 'favorite' => 'June', 'worst' => 'February'}
def hungry
  puts "Are you hungry?"
  yield ("eggs")
end

hungry { |food| puts "Same here. I want to eat #{food}"}
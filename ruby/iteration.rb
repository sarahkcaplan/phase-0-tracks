def hungry
  puts "Are you hungry?"
  yield
end

hungry { puts "Same here."}
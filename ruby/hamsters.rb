p "What's the hamsters name?"
user_hamster = gets.chomp


p "Rate #{user_hamster}'s volume level.(1-10)"
hamster_volume = gets.chomp
hamster_volume.to_i

p "#{user_hamster}'s fur color..."
hamster_fur = gets.chomp

p "Is #{user_hamster} a good candidate for adoption?(y/n)"
good_hamster = gets.chomp
if good_hamster == 'y'
  good_hamster = true
elsif good_hamster == 'n'
  good_hamster = false
end

p "Estimate #{user_hamster}'s age."
hamster_age = gets.chomp
hamster_age.to_i

if hamster_age == ""
  hamster_age.to_i
  p hamster_age = nil
end

puts "Hamster's name: #{user_hamster}"
puts "#{user_hamster}'s volume: #{hamster_volume}"
puts "#{user_hamster}'s fur: #{hamster_fur}"
puts "#{user_hamster} is a good candidate: #{good_hamster}"
puts "#{user_hamster} age: #{hamster_age}"

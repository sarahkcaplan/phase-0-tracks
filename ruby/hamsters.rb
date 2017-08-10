p "What's the hamsters name?"
user_hamster = gets.chomp
p "Rate #{user_hamster}'s volume level.(1-10)"
hamster_volume = gets.chomp
p "#{user_hamster}'s fur color..."
hamster_fur = gets.chomp
p "Is #{user_hamster} a good candidate for adoption?(y/n)"
good_hamster = gets.chomp
p "Estimate #{user_hamster}'s age."
hamster_age = gets.chomp

if hamster_age == ""
  p hamster_age = nil
end
class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender, :reindeer_ranking

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def age_santa()
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking = reindeer_ranking.insert(-1, reindeer_name)
  end


  def speak()
    puts "Ho, ho ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
end



# our_santa = Santa.new("female", "Jewish")
# puts our_santa.get_mad_at("Vixen")
# our_santa.eat_milk_and_cookies("chocolate")

# our_santa.initialize

# john = Santa.new("male", "black")
# sarah = Santa.new("white", "female")

# santas = []
# santas << billie
# santas << john
# santas << sarah

# santas.each {|santa| puts "Meet our new santa: #{santa}"}

## Prints out:
# Meet our new santa: #<Santa:0x007fc9aa0939b0>
# Meet our new santa: #<Santa:0x007fc9aa0935a0>
# Meet our new santa: #<Santa:0x007fc9aa0932d0>

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
5.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i],)
end

santas.each do |santa|
  ethnicity = santa.ethnicity
  gender = santa.gender
  age = rand(180)
  puts "Santa is a #{ethnicity} #{gender} who is #{age} years old."
end
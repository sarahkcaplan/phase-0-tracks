class Santa
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
    @reindeer_ranking =reindeer_ranking.insert(-1, reindeer_name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ehtnicity
    @ethnicity
  end

  def speak()
    puts "Ho, ho ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
end

# our_santa = Santa.new
# our_santa.speak
# our_santa.eat_milk_and_cookies("chocolate")
# our_santa.initialize


billie = Santa.new("female", "Jewish")
john = Santa.new("male", "black")
sarah = Santa.new("white", "female")

santas = []
santas << billie
santas << john
santas << sarah

santas.each {|santa| puts "Meet our new santa: #{santa}"}

## Prints out:
# Meet our new santa: #<Santa:0x007fc9aa0939b0>
# Meet our new santa: #<Santa:0x007fc9aa0935a0>
# Meet our new santa: #<Santa:0x007fc9aa0932d0>
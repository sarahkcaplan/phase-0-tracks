class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#define
#input: number
#step: print woof!
#iterate the number of times = to number
#output: puts stuff whatever

  def woof(integer)
    puts "Woof! " * integer
  end

  def roll_over()
    puts "*rolls over*"
  end
# define
# input: years(human)
# steps: some sort of conversion
# output: a integer years(dog)
  def dog_years(years)
    years * 7  #impiclit return
  end

  #define
  #input: fidos name
  #step: if name = fidos name
  #step: true then woof!
  #step: false = growl
  #output: boolean

  def dog_name(name)
    if name == 'fido'
      puts "Woof!"
    else
      puts "Grrrr!"
    end
  end

  def initialize()
    print "initializing new puppy instance ..."
  end


end

fido = Puppy.new

fido.fetch('ball')
fido.woof(8)
fido.roll_over
puts fido.dog_years(10)
fido.dog_name('cindy')
fido.dog_name('fido')

class Snocones

  def initialize()
    puts "I'm a snowcone!"
  end

  def melt()
    print "Oh nooo! :("
  end

  def flavor(fruit)
    print "This #{fruit} Snocone is the best."
  end
end

lots_of_sno = []

5.times do
  lots_of_sno << Snocones.new
end

puts lots_of_sno


lots_of_sno.each do |cone|
  cone.melt
  cone.flavor("cherry")
end

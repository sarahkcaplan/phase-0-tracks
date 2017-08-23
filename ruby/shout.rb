module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yell_happily(words)
    words + " yippeeee!!"
end

puts self.yell_happily("I got it!") end
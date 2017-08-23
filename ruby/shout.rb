module Shout
  def yell_angrily(words)
    words + "!!!" + ":("
  end

  def yell_happily(words)
    words + " yippeeee!!"
  end
end


Class Sarah
  include Shout
end

a_sarah = Sarah.new
a_sarah.yell_happily("Tralalala!")
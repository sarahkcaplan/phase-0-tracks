class Game

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def letters_of_word()
    letters_of_word = []
    letters_of_word += @word.split('')
  end

  def guesses_allowed(letters_of_word)
    letters_of_word.length + 3
  end

  def letters_guessed()
  end

  def game_progress()
  end

  def guesses_remaining()
  end
end

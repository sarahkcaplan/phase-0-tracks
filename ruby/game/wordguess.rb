class Game

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def game_word()
    letters_of_word = []
    letters_of_word += @word.split('')
  end

  def guesses_allowed(letters_of_word)
    letters_of_word.length + 3
  end

  def letters_guessed(letter)
    letters_guessed = []
    letters_guessed.insert(-1, letter)
  end

  def compare_guess_to_word(letters_of_word, guess)
    letters_of_word.include?(guess)
  end

  def game_progress()
  end

  def guesses_remaining()
  end
end

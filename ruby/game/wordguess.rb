class Game

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def game_word()
    letters_of_word = []
    letters_of_word << @word.split('')
  end

  def guesses_allowed(letters_of_word)
    letters_of_word.length + 3
  end

  def letters_guessed(letter)
    letters_guessed = []
    letters_guessed.insert(-1, letter)
  end

  def compare_guess_to_word(letters_of_word, guess)
    answer = letters_of_word.include?(guess)
  end

  def find_replace_letters(letters_of_word, guess)
    progress = Array.new(letters_of_word.length, '_')
    letters_of_word.each do |letter|
      if letter == guess
        index = letters_of_word.index(letter)
        progress[index] = guess
      end
    end
    progress.to_s
  end
end

test_game = Game.new('hawk')
puts test_game.find_replace_letters(['h','a','w','k'], 'h')
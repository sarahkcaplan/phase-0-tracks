class Game

attr_accessor :word, :progress, :letters_of_word

  def initialize(word)
    @word = word
    @progress = []
    @letters_of_word = []
  end

  def game_word()
    @letters_of_word = []
    @letters_of_word += @word.split('')
    @letters_of_word
  end

  def guesses_allowed(letters_of_word)
    letters_of_word.length + 3
  end

  def letters_guessed(letter)
    letters_guessed = []
    letters_guessed.insert(-1, letter)
  end

  def compare_guess_to_word(guess)
    @letters_of_word
    answer = @letters_of_word.include?(guess)
  end

  def find_replace_letters(guess)
    @progress = Array.new(@letters_of_word.length, '_')
    letters_of_word.each do |letter|
      if letter == guess
        index = @letters_of_word.index(letter)
        @progress[index] = guess
      else
        @progress
      end
    end
    @progress
  end
end

# p wordguess = Game.new("hawk")
# puts wordguess.compare_guess_to_word('a')


# # Driver code
# puts "Welcome! Let's play."
# puts "Enter a word."
# word = gets.chomp
# wordguess = Game.new(word)
# letters_of_word = wordguess.game_word()
# guesses_allowed = wordguess.guesses_allowed(letters_of_word)
# count = 0
# while count < guesses_allowed && wordguess.word != wordguess.progress
#   puts "Guess a letter."
#   letter = gets.chomp
#   if wordguess.compare_guess_to_word(letters_of_word, letter) == true
#     puts "Got one!"
#     wordguess.find_replace_letters(letters_of_word, letter)
#     puts wordguess.progress
#     count += 1
#   else
#     puts "Nope."
#     count += 1
#     puts wordguess.progress
#   end
# end

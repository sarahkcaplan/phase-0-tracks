class Game

attr_accessor :word, :progress

  def initialize(word)
    @word = word
    @progress = []
  end

  def game_word()
    letters_of_word = []
    letters_of_word += self.word.split('')
    letters_of_word
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
    puts self.progress.class
    puts self.word.class
    self.progress += ('_' * self.word.length)
    progress = spaces
    letters_of_word.each do |letter|
      if letter == guess
        index = letters_of_word.index(letter)
        progress[index] = guess
        puts progress
      end
    end
  end
end

wordguess = Game.new("hawk")
wordguess.find_replace_letters(['h','a','w','k'], 'a')


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
#   letter = gets.to_s
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

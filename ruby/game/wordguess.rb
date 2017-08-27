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
    progress.join('')
  end
end

# Driver code
puts "Welcome! Let's play."
puts "Enter a word."
word = gets.chomp
wordguess = Game.new(word)
letters_of_word = wordguess.game_word()
guesses_allowed = wordguess.guesses_allowed(letters_of_word)
puts "Guess a letter."
letter = gets.chomp
letters_guessed = wordguess.letters_guessed(letter)
count = 0
progress = Array.new(letters_of_word.length, '_').join('_')
while count < guesses_allowed && word != progress
  puts "Guess a letter."
  letter = gets.chomp
  if wordguess.compare_guess_to_word(letters_of_word, letter) == true
    puts "Got one!"
    count += 1
  else
    puts "Nope. Pick another."
    count += 1
  end
  wordguess.find_replace_letters(letters_of_word, letter)
  progress = wordguess.find_replace_letters(letters_of_word, letter)
end

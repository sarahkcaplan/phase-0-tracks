require_relative 'wordguess'

describe Game do
  let(:game) { Game.new("hawk") }

  it "stores a word for the game on initialization" do
    expect(game.game_word()).to eq ['h','a','w','k']
  end

  it "gives guesses equal to the length of the word plus 3" do
    game.letters_of_word = ['h','a','w','k']
    expect(game.guesses_allowed()).to eq 7
  end

  it "stores guessed letters" do
    expect(game.letters_guessed('y')).to eq ['y']
  end

  it "checks to see if the user's guess is among the letters of the word" do
    game.letters_of_word = ['h','a','w','k']
    expect(game.compare_guess_to_word('w')).to eq true
    expect(game.compare_guess_to_word('x')).to eq false
  end

  it "shows player remaining spaces and correctly guessed letters" do
    game.letters_of_word = ['h','a','w','k']
    expect(game.find_replace_letters('a')).to eq ["_", "a", "_", "_"]
  end
end

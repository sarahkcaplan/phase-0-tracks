require_relative 'wordguess'

describe Game do
  let(:game) { Game.new("baldhawk") }

  it "stores a word for the game on initialization" do
    expect(game.game_word()).to eq ['b','a','l','d','h','a','w','k']
  end

  it "gives guesses equal to the length of the word plus 3" do
    expect(game.guesses_allowed(['b','a','l','d','h','a','w','k'])).to eq 11
  end

  it "stores guessed letters" do
    expect(game.letters_guessed('y')).to eq ['y']
  end

  it "checks to see if the user's guess is among the letters of the word" do
    expect(game.compare_guess_to_word(['b','a','l','d','h','a','w','k'], 'l')).to eq true
    expect(game.compare_guess_to_word(['b','a','l','d','h','a','w','k'], 'x')).to eq false
  end

  it "shows player remaining spaces and correctly guessed letters" do
    expect(game.game_progress()).to eq "-a---a--"
  end
end

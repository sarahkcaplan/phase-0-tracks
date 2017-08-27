require_relative 'wordguess'

describe Game do
  let(:game) { Game.new("baldhawk") }

  it "stores a word for the game on initialization" do
  expect(game.letters_of_word()).to eq ['b','a','l','d','h','a','w','k']
  end

  it "gives guesses equal to the length of the word plus 3"
  expect(guesses_allowed(['b','a','l','d','h','a','w','k'])).to eq 11
end

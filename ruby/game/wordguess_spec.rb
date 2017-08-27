require_relative 'wordguess'

describe Game do
  let(:game) { Game.new("baldhawk") }

  it "stores a word for the game on initialization" do
  expect(game.letters_of_word()).to eq ['b','a','l','d','h','a','w','k']
  end
end

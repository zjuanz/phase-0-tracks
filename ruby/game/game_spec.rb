
require_relative 'game'

describe Game do
  
  let(:game) { Game.new()}

  it "stores word to be guessed" do
    expect(game.save_word("hangman")).to eq "hangman"
    expect(game.guesses).to eq ''
    expect(game.current_guess).to eq "_______"
    expect(game.total_guesses).to eq 7
    expect(game.number_guesses).to eq 0
    expect(game.number_of_guesses_exceeded).to eq false
  end

  it "changes the guessed chars" do
    game.save_word("hangman")
    expect(game.change_guess("h")).to eq "h______"
    expect(game.change_guess("n")).to eq "h_n___n"
  end

  it " checks guesses" do
    game.save_word("hangman")
    expect(game.check_guess("h")).to eq "h______"
    expect(game.guesses).to eq "h"
    expect(game.check_guess("n")).to eq "h_n___n"
    expect(game.guesses).to eq "hn"
    expect(game.number_guesses).to eq 2
    expect(game.number_of_guesses_exceeded).to eq false
    game.check_guess("h")
    expect(game.number_guesses).to eq 2
    expect(game.number_of_guesses_exceeded).to eq false
    game.check_guess("z")
    expect(game.number_of_guesses_exceeded).to eq false    
    game.check_guess("y")
    expect(game.number_of_guesses_exceeded).to eq false
    game.check_guess("x")
    expect(game.number_of_guesses_exceeded).to eq false
    game.check_guess("w")
#    puts game.number_guesses
    expect(game.number_of_guesses_exceeded).to eq false
    game.check_guess("v")
    expect(game.number_of_guesses_exceeded).to eq true
    expect(game.number_guesses).to eq 7
    game.check_guess("u")
    expect(game.number_of_guesses_exceeded).to eq true

  end

end
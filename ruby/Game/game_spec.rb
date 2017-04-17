require_relative 'game'

describe Game do
  let(:game) {Game.new("hello")}
  
  it "has a readable string" do
    expect(game.word).to eq "hello"
  end
  
  it "has a writable guess count" do
    game.guess_max = 20
    expect(game.guess_max).to eq 20
  end
  
  it "stores a string as a key, and a string with matching length of underscores as value in hash" do
    word_hash = {"hello"=>"_____"}
    expect(game.get_word).to eq word_hash
  end
  
  it "updates value of hash with letter in correct index" do
    game.get_word
    word_hash = {"hello"=>"h____"}
    expect(game.update_val("h")).to eq word_hash
  end
end
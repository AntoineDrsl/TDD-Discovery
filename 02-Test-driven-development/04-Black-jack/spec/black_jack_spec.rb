# TO DO: Write specs for you Black Jack game

require 'black_jack'

describe '#hit' do
  it 'returns a new card.' do
    expect(state_of_game()).to be Integer
    expect(hit()).to eq((1..11))
  end
end

describe '#dealers_hand' do
  it 'returns the dealers_hand.' do
    expect(dealers_hand()).to be Array
    expect(dealers_hand()).to include((1..11))
  end
end

describe '#state_of_game' do
  it 'returns player current score.' do
    expect(state_of_game()).to be Integer
  end
end

describe '#end_of_game' do
  it 'returns game result.' do
    expect(end_of_game()).to be String
  end
end

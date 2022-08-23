# TO DO: Write specs for you Black Jack game
require 'dealer'

# Global variables
$cards = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11]

describe '#hit' do
  it 'returns a new card from global variable and delete it.' do
    expect(hit()).to be_a_kind_of(Integer)
    expect(1..11).to cover(hit())
    expect($cards.length).to eq(50)
  end
end

describe '#dealer_play' do
  it 'returns the dealer_play (array).' do
    expect(dealer_play([4, 8])).to be_a_kind_of(Array)
    expect(dealer_play([4, 8])).to include((1..11))
    expect(dealer_play([4, 8, 5])).to eq([4, 8, 5])
    expect(dealer_play([4, 8, 7])).to eq([4, 8, 7])
  end
end

describe '#hand_value' do
  it 'returns the sum of all the cards' do
    expect(hand_value([1, 2, 3])).to be_a_kind_of(Integer)
    expect(hand_value([1, 2, 3])).to eq(6)
  end
end

describe '#special_messages' do
  it 'returns a message according to score.' do
    expect(special_messages(17)).to eq(nil)
    expect(special_messages(21)).to eq('Blackjack !')
    expect(special_messages(23)).to eq('Bust !')
  end
end

describe '#result_message' do
  it 'returns game result as string.' do
    expect(result_message(17, 19)).to be_a_kind_of(String)
  end

  it 'returns equality according to rules.' do
    expect(result_message(21, 21)).to eq('Equility')
    expect(result_message(23, 23)).to eq('Equility')
    expect(result_message(23, 25)).to eq('Equility')
    expect(result_message(17, 17)).to eq('Equility')
  end

  it 'returns win according to rules.' do
    expect(result_message(21, 19)).to eq('You win !')
    expect(result_message(17, 23)).to eq('You win !')
    expect(result_message(21, 23)).to eq('You win !')
    expect(result_message(17, 16)).to eq('You win !')
    expect(result_message(17, 24)).to eq('You win !')
  end

  it 'returns loose according to rules.' do
    expect(result_message(19, 21)).to eq('You loose !')
    expect(result_message(23, 17)).to eq('You loose !')
    expect(result_message(23, 21)).to eq('You loose !')
    expect(result_message(16, 17)).to eq('You loose !')
    expect(result_message(24, 17)).to eq('You loose !')
  end
end

# TO DO: Write specs for you hey_oh method

require 'hey_oh'

describe '#hey_oh' do
  it 'returns an error if first argument is not an array of integers.' do
    error = 'First argument must be an array of integers'

    expect(hey_oh('hey')).to eq(error)
    expect(hey_oh(1)).to eq(error)
    expect(hey_oh(1.1)).to eq(error)
    expect(hey_oh([1, 2, 'hey'])).to eq(error)
    expect(hey_oh([1, [2], 3])).to eq(error)
  end

  it 'returns a new array replacing numbers by strings according to rules' do
    expect(hey_oh([1, 2, 7])).to eq([1, 2, 7])
    expect(hey_oh([1, 3, 5])).to eq([1, 'Hey', 'Oh'])
    expect(hey_oh([10, 9, 30])).to eq(['Oh', 'Hey', 'HeyOh'])
  end

  it 'returns a new array without modifying initial one' do
    array = [5, 3, 30]
    new_array = hey_oh(array)

    expect(new_array).to eq(['Oh', 'Hey', 'HeyOh'])
    expect(array).to eq([5, 3, 30])
  end
end

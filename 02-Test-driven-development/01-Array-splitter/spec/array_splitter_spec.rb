# Remember: we are doing TDD here, so don’t rush in the program.
# You need to write the tests first.

require 'array_splitter'

describe '#array_splitter' do
  it 'return an error if first argument is not an array.' do
    error = 'First argument must be an array'

    expect(array_splitter('hi', 3)).to eq(error)
    expect(array_splitter(3, 3)).to eq(error)
    expect(array_splitter(true, 3)).to eq(error)
  end

  it 'return an error if second argument is not an integer.' do
    error = 'Second argument must be an integer'

    expect(array_splitter([1, 2, 3], 'hi')).to eq(error)
    expect(array_splitter([1, 2, 3], [1, 2])).to eq(error)
    expect(array_splitter([1, 2, 3], 1.1)).to eq(error)
  end

  it 'return an error if index is negative.' do
    error = 'Index must must not be negative'

    expect(array_splitter([1, 2, 3], -5)).to eq(error)
  end

  it 'return an error if index is not in array.' do
    error = 'Index is not in array'

    expect(array_splitter([1, 2, 3], 3)).to eq(error)
    expect(array_splitter([1, 2, 3], 54)).to eq(error)
  end

  it 'splits an array at a given index and return two arrays.' do
    expect(array_splitter([1, 2, 3], 1)).to eq([[1, 2], [3]])
    expect(array_splitter([1, 2, 3], 0)).to eq([[1], [2, 3]])
    expect(array_splitter([1, 2, 3], 2)).to eq([[1, 2, 3], []])
  end
end
